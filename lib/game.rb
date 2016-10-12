class Game

	attr_reader :player1, :player2, :target_player, :attacking_player

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@target_player = player2
		@attacking_player = player1
	end

	def attack(player)
		player.receive_damage
		swap_turns
	end

	def swap_turns
		if @target_player == @player1
			@target_player = @player2
		else
			@target_player = @player1
		end
		if @attacking_player == @player1
			@attacking_player = @player2
		else
			@attacking_player = @player1
		end
	end

end
