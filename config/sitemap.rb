SitemapGenerator::Sitemap.default_host = "https://rails5.com"

SitemapGenerator::Sitemap.create do
  Page.find_each do |page|
    add page_path(page), lastmod: page.updated_at
  end
end

