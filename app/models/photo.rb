class Photo < ActiveRecord::Base
  
  has_attached_file :image
  
  has_attached_file :image, :styles => { :medium => "300x300>", :small => "100x100>" },
    :commands => { :medium => "-background white -gravity center -extent 300x300 +repage" }
                    
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
                       
                       has_attached_file :image,
                                         styles: { thumb: ["64x64#", :jpg],
                                                   original: ['500x500>', :jpg] },
                                         convert_options: { thumb: "-quality 75 -strip",
                                                            original: "-quality 85 -strip" }
                                                            
                                              
  validates_attachment :image, presence: true,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                       size: { in: 0..500.kilobytes }
end
