module SpreeI18nHelper
  def flag_image_tag(locale)
    image_tag( flag_image_file_path(locale), {:alt => locale, :title => locale})
  end

  def flag_image_file_path(locale)
    file_root_name = case locale
      when :en, 'en'
        'gb'
      else
        locale
    end
    "flags/#{file_root_name}.png"
  end
end
