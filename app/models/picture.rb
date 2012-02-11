class Picture < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title, :slug
  validates_attachment_presence :file
  validates_attachment_size :file, :less_than => 5.megabytes, :if => :file
  validates_attachment_content_type :file, :content_type => [ "image/png", "image/jpg" ]

  has_attached_file :file, {
    :path          => "app/assets/images/pictures/:filename",
    :url           => "pictures/:filename"
  }

  before_create lambda { |pic| pic.slug = pic.title.parameterize }

  def to_param
    slug
  end
end
