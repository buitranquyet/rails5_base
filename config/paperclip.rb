unless Rails.env.test? || Rails.env.development?
  Paperclip::Attachment.default_options.update(
    storage:        :s3,
    s3_protocol:    :https,
    path:           ':class/:attachment/:id_partition/:style/:filename',
    url:            ':s3_domain_url',
    default_url:    ':class/:attachment/:style/missing.jpg',

    s3_credentials: {
      s3_region:           Rails.application.secrets.aws_region,
      bucket:              Rails.application.secrets.aws_s3_bucket,
      access_key_id:       Rails.application.secrets.aws_access_key_id,
      secret_access_key:   Rails.application.secrets.aws_secret_access_key
    },
    s3_headers:     { Expires: 1.year.from_now.httpdate }
  )
end

