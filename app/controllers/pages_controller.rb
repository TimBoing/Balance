class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home

    # @daily_meetings = Daily_meeting.all
    @mamm = DailyMeeting.last
    puts "The MAMM = #{@mamm.nil?} --------------------------"

    @philosopher_quote = Faker::GreekPhilosophers.quote
    @hipster_quote = Faker::Hipster.sentence
    @capitale = Faker::Nation.capital_city
    @scientist = Faker::Science.scientist
    @element = Faker::Science.element
    @element_symbol = Faker::Science.element_symbol
    @lotr = Faker::Movies::LordOfTheRings.character
    # Faker::Quote.famous_last_words
    # Faker::Quote.most_interesting_man_in_the_world
    # Faker::Quote.yoda
    # Faker::TvShows::HowIMetYourMother.quote
    # Faker::TvShows::MichaelScott.quote
    # Faker::TvShows::RickAndMorty.quote
    # Faker::TvShows::Stargate.quote

    # https://fr.wikipedia.org/wiki/
      #& title  ex: Dry_(Loiret) comme donné par le getWikiPage en console

  end
end
