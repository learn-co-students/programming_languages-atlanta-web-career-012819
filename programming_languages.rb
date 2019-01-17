def reformat_languages(languages)
  new_hash = {}
  languages.each do |method, language_used| 
    language_used.each do |name, type|
      if new_hash.has_key?(name)
        new_hash[name][:style] << method
      else 
        new_hash[name] = type
        new_hash[name][:style] = [method]
      end
    end
  end
  new_hash
end
