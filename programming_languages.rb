def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, langs|
		langs.each do |lang, data|
			if new_hash.key?(lang)
				new_hash[lang][:style] << style
			else
				new_hash[lang] = {:type => data[:type], :style => [style]}
			end
		end
	end
	new_hash
end