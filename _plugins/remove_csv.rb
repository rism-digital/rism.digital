require 'open-uri'
require 'csv'

module Jekyll
  module RemoteCsv
    class Generator < ::Jekyll::Generator
      priority :low

      # Add a csv from the site config to the site.data
      def generate(site)
        return unless site.config['remote_csv']
        site.config['remote_csv'].each do |source_name, conf|
          csv_string = URI.open(conf['source']).read rescue nil
          csv_data = CSV.parse(csv_string, headers: true).map(&:to_hash) if csv_string
          site.data[source_name] = csv_data if csv_data
        end
      end
    end
  end
end
