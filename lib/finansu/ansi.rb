# Extends strings to include methods for ANSI color codes
class String
  def bright; ansi(1);  end
  def red;    ansi(31); end
  def green;  ansi(32); end
  def yellow; ansi(33); end
  def blue;   ansi(34); end

  private
    def ansi(code)
      if FinAnSu::Prefs.get("color", "on") != "off"
        "\033[#{code}m#{self}\033[0m"
      else
        self
      end
    end
end
