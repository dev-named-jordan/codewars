require 'json'

def is_valid(stale, latest, otjson)
  stale_mod = stale
  skip = 0
  skip_counter = 0
  modified_state = ""
  hash_values = []
  if otjson == '[]'
    return p true
  end
  parsed = JSON.parse(otjson)
  parsed.each do |hash|
    if hash["op"] == "skip"
      skip_counter += 1
      hash_values << hash["count"]
      stale_mod.insert(hash["count"], " ")
      skip = hash["count"]
      if hash_values.sum >= (stale.size - skip_counter)
        return p false
      end
    elsif hash["op"] == "delete"
      hash_values << hash["count"]
      if hash_values.sum >= (stale.size - skip_counter)
        return p false
      end
      modified_state = stale_mod.gsub(stale_mod[skip..(skip + hash["count"])], "")
    end
    if hash["op"] == "insert"
      mod = modified_state.insert(0, (hash["chars"] + " "))
      # require "pry"; binding.pry
    end
  end
  if hash_values.sum >= stale.size
    return p false
  end
  p modified_state == latest
end

# is_valid(
#   'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.',
#   'Repl.it uses operational transformations.',
#   '[{"op": "skip", "count": 40}, {"op": "delete", "count": 47}]'
#   )
# true

# is_valid(
#   'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.',
#   'Repl.it uses operational transformations.',
#   '[{"op": "skip", "count": 45}, {"op": "delete", "count": 47}]'
#   )
# # false, delete past end
#
# is_valid(
#   'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.',
#   'Repl.it uses operational transformations.',
#   '[{"op": "skip", "count": 40}, {"op": "delete", "count": 47}, {"op": "skip", "count": 2}]'
#   )
# false, skip past end
#
is_valid(
  'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.',
  'We use operational transformations to keep everyone in a multiplayer repl in sync.',
  '[{"op": "delete", "count": 7}, {"op": "insert", "chars": "We"}, {"op": "skip", "count": 4}, {"op": "delete", "count": 1}]'
  )
# true

# is_valid(
#   'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.',
#   'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.',
#   '[]'
#   )
# true
