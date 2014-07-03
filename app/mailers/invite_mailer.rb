class InviteMailer < ActionMailer::Base
  default from: "from@example.com"

  def lover_email(user, invitee)
    @user = Lover.find user
    @invitee = invitee
    @url  = url_for controller: :lovers, action: :join_partners, lover_id: @user.id
    mail(to: invitee, subject: "#{@user.name} wants to be your lover")
  end
end
