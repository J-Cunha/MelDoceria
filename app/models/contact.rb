class Contact < MailForm::Base
  validates_presence_of :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
        :subject => "Contato Via Site MelDoceria.com.br",
        :to => "soares.cunha.joao@gmail.com, contato@meldoceria.com.br",
        :from => %("#{name}" <#{email}>)
    }
  end
end