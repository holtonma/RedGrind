class S3UploadJob 
  
  def initialize(upload_id)
    @upload_id = upload_id
  end
  
  def perform
    Upload.find(@upload_id).upload_to_s3
  end
end