def clear()
  Gem.win_platform? ? (system "cls") : (system "clear")
end