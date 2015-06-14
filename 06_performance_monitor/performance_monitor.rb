require "time"

def measure(n=1)

	if n > 1
		total_time = 0
		n.times do
			current_time = Time.now
			yield
			total_time += Time.now - current_time
		end
		average_time = total_time / n

	else
		current_time = Time.now
		yield
		elapsed_time = Time.now - current_time
	end
end