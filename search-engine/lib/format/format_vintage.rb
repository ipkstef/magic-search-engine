class FormatVintage < Format
  def format_pretty_name
    "Vintage"
  end

  def build_excluded_sets
    # Most exclusions are covered by is:funny
    #
    # This only needs to list ones that are not, like:
    # * sets which exist only on Arena
    # * sets which exist only in other digital games (Shandalar or Sega)
    # * token Dungeon sets (this is somewhat questionable if they should be included or not)
    #
    # This could be done programatically instead
    #
    # Pauper fomat needs it for defining what counts as a "common"

    excluded_sets = Set[*%w[
      30a
      aa1
      aa2
      aa3
      aa4
      ana
      anb
      hbg
      j21
      oana
      om1
      omb
      past
      pio
      pmic
      prm
      psdg
      sir
      sis
      tafr
      tclb
      tltr
      xana
      yblb
      ybro
      ydft
      ydmu
      ydsk
      yeoe
      ylci
      ymid
      ymkm
      yneo
      yone
      yotj
      ysnc
      ytdm
      ywoe
    ]]

    # Portal / Starter sets used to not be tournament legal
    if @time and @time < Date.parse("2005.3.20")
      excluded_sets += Set["por", "p02", "ptk", "s99", "s00"]
    end

    excluded_sets
  end
end
