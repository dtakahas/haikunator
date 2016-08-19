
class Base
  def build(range, delimiter, opts)
    result = Array(String | String | Int32).new
    custom_adjectives = opts.fetch(:adjectives, nil)
    custom_nouns = opts.fetch(:nouns, nil)
    adj_list = custom_adjectives ? custom_adjectives[rand(custom_adjectives.size)] : adjectives[rand(adjectives.size)]
    noun_list = custom_nouns ? custom_nouns[rand(custom_nouns.size)] : nouns[rand(nouns.size)]
    result << adj_list
    result << noun_list
    if range != 0
      result << rand(range)
    end
    result.join(delimiter)
  end


  def adjectives
    %w(
      autumn hidden bitter misty silent empty dry dark summer
      icy delicate quiet white cool spring winter patient
      twilight dawn crimson wispy weathered blue billowing
      broken cold damp falling frosty green long late lingering
      bold little morning muddy old red rough still small
      sparkling throbbing shy wandering withered wild black
      young holy solitary fragrant aged snowy proud floral
      restless divine polished ancient purple lively nameless
    )
  end


 def nouns
    %w(
      waterfall river breeze moon rain wind sea morning
      snow lake sunset pine shadow leaf dawn glitter forest
      hill cloud meadow sun glade bird brook butterfly
      bush dew dust field fire flower firefly feather grass
      haze mountain night pond darkness snowflake silence
      sound sky shape surf thunder violet water wildflower
      wave water resonance sun wood dream cherry tree fog
      frost voice paper frog smoke star
    )
  end
end
