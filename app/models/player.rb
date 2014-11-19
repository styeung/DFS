class Player < ActiveRecord::Base
  validates :name, :position, :team_id, presence: true
  
  belongs_to(
    :team,
    class_name: "Team",
    foreign_key: :team_id,
    primary_key: :id
  )
  
  has_many(
    :player_games,
    class_name: "PlayerGame",
    foreign_key: :player_id,
    primary_key: :id
  )
  
  def point_history
    @player_games = self.player_games
    @output = []
    
    if @player_games.length > 1
      @player_games.each do |player_game|
        @output << player_game.total_fantasy_points
      end
    
      return @output.sort
    else
      return []
    end
  
  end
  
  def average_fantasy_points
    sum = 0

    @player_games = self.player_games
    
    if @player_games.length > 1
      @player_games.each do |player_game|
        sum += player_game.total_fantasy_points
      end
    
      return sum/@player_games.length
    else
      return 0
    end
  end
  
  def self.update_incorrect_info
    Player.find_by_name("John Jenkins").update(position: "SG")
     Player.find_by_name("Adreian Payne").update(position: "C")
     Player.find_by_name("Dwight Powell").update(position: "PF")
     Player.find_by_name("Markel Brown").update(position: "SG")
     Player.find_by_name("Louis Amundson").update(position: "PF")
     Player.find_by_name("Will Cherry").update(position: "PG")
     Player.find_by_name("Raymond Felton").update(position: "PG")
     Player.find_by_name("Ricky Ledo").update(position: "SG")
     Player.find_by_name("J.J. Hickson").update(position: "C")
     Player.find_by_name("Gary Harris").update(position: "SG")
     Player.find_by_name("Erick Green").update(position: "PG")
     Player.find_by_name("Jodie Meeks").update(position: "SG")
     Player.find_by_name("Luigi Datome").update(position: "SF")
     Player.find_by_name("Tony Mitchell").update(position: "PF")
     Player.find_by_name("Cartier Martin").update(position: "PF")
     Player.find_by_name("David Lee").update(position: "PF")
     Player.find_by_name("Brandon Rush").update(position: "SG")
     Player.find_by_name("Nemanja Nedovic").update(position: "PG")
     Player.find_by_name("Francisco Garcia").update(position: "SG")
     Player.find_by_name("George Hill").update(position: "PG")
     Player.find_by_name("Paul George").update(position: "SF")
     Player.find_by_name("C.J. Watson").update(position: "PG")
     Player.find_by_name("David West").update(position: "PF")
     Player.find_by_name("Glen Davis").update(position: "PF")
     Player.find_by_name("C.J. Wilcox").update(position: "SG")
     Player.find_by_name("Ryan Kelly").update(position: "PF")
     Player.find_by_name("Steve Nash").update(position: "PG")
     Player.find_by_name("Nick Young").update(position: "SG")
     Player.find_by_name("Nick Calathes").update(position: "SG")
     Player.find_by_name("Danny Granger").update(position: "SF")
     Player.find_by_name("Udonis Haslem").update(position: "PF")
     Player.find_by_name("Damien Inglis").update(position: "SF")
     Player.find_by_name("Johnny O'Bryant").update(position: "PF")
     Player.find_by_name("Ronny Turiaf").update(position: "C")
     Player.find_by_name("Glenn Robinson").update(position: "SG")
     Player.find_by_name("Patric Young").update(position: "PF")
     Player.find_by_name("Andrea Bargnani").update(position: "C")
     Player.find_by_name("Jose Calderon").update(position: "PG")
     Player.find_by_name("Kevin Durant").update(position: "SF")
     Player.find_by_name("Jeremy Lamb").update(position: "SG")
     Player.find_by_name("Anthony Morrow").update(position: "SG")
     Player.find_by_name("Grant Jerrett").update(position: "PF")
     Player.find_by_name("Mitch McGary").update(position: "PF")
     Player.find_by_name("Victor Oladipo").update(position: "SG")
     Player.find_by_name("Jason Richardson").update(position: "SG")
     Player.find_by_name("Michael Carter-Williams").update(position: "PG")
     Player.find_by_name("Jerami Grant").update(position: "SF")
     Player.find_by_name("P.J. Tucker").update(position: "SF")
     Player.find_by_name("Zoran Dragic").update(position: "SG")
     Player.find_by_name("Victor Claver").update(position: "PF")
     Player.find_by_name("Tiago Splitter").update(position: "C")
     Player.find_by_name("Patrick Mills").update(position: "PG")
     Player.find_by_name("Kyle Anderson").update(position: "SF")
     Player.find_by_name("Bruno Caboclo").update(position: "SF")
     Player.find_by_name("Jeremy Evans").update(position: "SF")
     Player.find_by_name("Toure' Murry").update(position: "SF")
     Player.find_by_name("Bradley Beal").update(position: "SG")
     Player.find_by_name("Martell Webster").update(position: "SF")
     Player.find_by_name("P.J. Hairston").update(position: "SG")
     Player.find_by_name("Ish Smith").update(position: "PG")
     Player.find_by_name("A.J. Price").update(position: "PG")
     Player.find_by_name("Drew Gordon").update(position: "PF")
     Player.find_by_name("Noah Vonleh").update(position: "PF")
     Player.find_by_name("Robert Covington").update(position: "SF")
  end
  
end
