class Video < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title, :slug
  validates_attachment_presence :file
  validates_attachment_size :file, :less_than => 50.megabytes, :if => :file
  #validates_attachment_content_type :file, :content_type => [ "video/mp4" ]

  has_attached_file :file, {
    :path          => "app/assets/videos/:filename",
    :url           => "/assets/:filename"
  }

  before_create lambda { |vid| vid.slug = vid.title.parameterize }

  def to_param
    slug
  end
end
