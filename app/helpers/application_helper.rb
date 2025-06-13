module ApplicationHelper
  def asset_exists?(filename)
    if Rails.configuration.assets.compile
      Rails.application.assets.find_asset(filename).present?
    else
      Rails.application.assets_manifest.assets[filename].present?
    end
  end
end
