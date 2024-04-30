module Jekyll

    # A basic formatter class for handling links to RISM Online and other links
    class Formatter
      def format(key, value)
        if (value && key == "RISM Online")
          return "<a href='#{value}' target='_blank'>#{value.sub("https://rism.online/", "")}</a>"
        elsif (value && (key == "Digitization" || key == "Bibliographic record"))
          if (value.include?('|'))
            return "<a href='#{value.split('|')[1]}' target='_blank'>#{value.split('|')[0]}</a>"
          else
            return "<a href='#{value}' target='_blank'>#{value}</a>"
          end
        end
        return value
      end

      def skip?(key)
        return false
      end
    end

    # A formatter for the Brown list
    class Brown < Formatter
      def format(key, value)
        super
      end

      # skip the Name column here
      def skip?(key)
        return true if key == "Name"
      end
    end

    class DataTable < Liquid::Tag
      def initialize(tag_name, args, tokens)
        super
        args_a = args.strip.split
        # The collection name
        @data_key = args_a[0]
        # The formatter class name
        @formatter = "Jekyll::" + args_a[1]
      end
  
      def render(context)
        data = context.registers[:site].data[@data_key]
        formatterClass = Object.const_get(@formatter)
        formatter = formatterClass.new if formatterClass
        return unless data && formatter
  
        html = "<table id='datatable'>\n"
        html += "<thead>\n<tr>"
        data[0].keys.each do |key|
          # columns to skip (if any)
          next if formatter.skip?(key)
          html += "<th>#{key}</th>" 
        end
        html += "</tr>\n</thead>\n"
  
        html += "<tbody>\n"
        data.each do |row|
          html += "<tr>"
          row.each do |key, value|
            next if formatter.skip?(key)
            # Apply the formatter
            html += "<td>#{formatter.format(key, value)}</td>"
          end
          html += "</tr>\n"
        end
        html += "</tbody>\n"
        html += "</table>\n"
        # return the html
        html
      end
    end
  end
  
  Liquid::Template.register_tag('datatable', Jekyll::DataTable)