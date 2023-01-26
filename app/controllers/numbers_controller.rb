class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)

      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb" })
  end

  def losers
    @lose = Array.new

    5.times do
      unlucky = rand(1..100)

      @lose.push(unlucky)
    end

    render({ :template => "lottery_stuff/unlucky.html.erb" })
  end
end
