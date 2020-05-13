require "geoip2"

reader = GeoIP2.open("./geo_data/GeoLite2-City.mmdb", ["en"])

pp record = reader.city("128.101.101.101")
pp record.registered_country.iso_code # => "US"
pp record.city.name

pp record.location.latitude # => 44.9532
pp record.location.longitude # => -93.158


