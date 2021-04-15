def clear()
  Gem.win_platform? ? (system "cls") : (system "clear")#will improve security soon*tm
end