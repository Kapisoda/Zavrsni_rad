class ContactForm < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  def headers
    {   :subject => "Kontakt Forma",
        :to => "filipkapusta1@gmail.com",
        :form => %("#{name}" <#{email}>)}
  end
end