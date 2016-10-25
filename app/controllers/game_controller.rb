class GameController < ApplicationController
  def user_plays_rock
    moves = ["Rock","Paper","Scissors"]
    @computer_move = moves.sample
    if @computer_move == "Rock"
      @img_url ="http://localhost:3000/assets/images/rock.png"
    elsif @computer_move =="Paper"
      @img_url="http://localhost:3000/assets/images/paper.png"
    elsif @computer_move=="Scissors"
      @img_url="http://localhost:3000/assets/images/scissors.png"
    end
    if @computer_move=="Rock"
      @result="You tied!"
      @label="label label-success"
    elsif @computer_move=="Scissors"
      @result="You won!"
      @label="label label-success"
    else
      @result="You lost!"
      @label="label label-danger"
    end
    render("game/play_rock.html.erb")
  end

  def user_plays_paper
    moves = ["Rock","Paper","Scissors"]
    @computer_move = moves.sample
    if @computer_move == "Rock"
      @img_url ="http://localhost:3000/assets/images/rock.png"
    elsif @computer_move =="Paper"
      @img_url="http://localhost:3000/assets/images/paper.png"
    elsif @computer_move=="Scissors"
      @img_url="http://localhost:3000/assets/images/scissors.png"
    end

    if @computer_move=="Rock"
      @result="You won!"
      @label="label label-success"
    elsif @computer_move=="Scissors"
      @result="You lost!"
      @label="label label-danger"
    else
      @result="You tied!"
      @label="label label-success"
    end
    render("game/play_paper.html.erb")
  end

  def user_plays_scissors
    moves = ["Rock","Paper","Scissors"]
    @computer_move = moves.sample
    if @computer_move == "Rock"
      @img_url ="http://localhost:3000/assets/images/rock.png"
    elsif @computer_move =="Paper"
      @img_url="http://localhost:3000/assets/images/paper.png"
    else @img_url="http://localhost:3000/assets/images/scissors.png"
    end
    if @computer_move=="Rock"
      @result="You lost!"
      @label="label label-danger"
    elsif @computer_move=="Scissors"
      @result="You tied!"
      @label="label label-success"
    else
      @result="You won!"
      @label="label label-success"
    end
    render("game/play_scissors.html.erb")
  end
end
