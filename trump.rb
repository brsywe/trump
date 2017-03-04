# -*- coding: utf-8 -*-

Plugin.create(:trump) do

  command(
    :trump,
    name: '幼なじみは大統領',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    trump = [
      "Abe from Japan, who's a killer, he's great.",
      "Grab them by the p---y. You can do anything.",
      "I will build a great, great wall on our southern border, and I will have Mexico pay for that wall.",
      "Make America great again",
      "My fingers are long and beautiful, as, it has been well documented, are various other parts of my body.",
      "Together, we will lead our party back to the White House, and we will lead our country back to safety, prosperity, and peace.",
      "If somebody attacks Japan, we have to immediately go and start World War III, OK? ",
      "Get the hell out of here!　",
      "Can I be honest with you? ",
      "I am your voice. ",
      "God bless You And Good Night.　I love you. ",
      "SEE YOU IN COURT",
      "I have never seen a thin person drinking Diet Coke.",
      "安倍総理ガンバレ"
     
    ]
    opt.messages.each do |message|
      to_name = message.user.idname
      msg = "@#{to_name} #{trump.sample}"
      Service.primary.post(:message => msg, :replyto => message)
    end
  end
end
