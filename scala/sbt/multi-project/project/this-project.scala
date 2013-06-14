import sbt._
import Keys._

object ThisProject {
  def id       = Settings.project
  def base     = file(".")
  def settings = BuildSettings.defaults

  object module {
    def apply(suffix:String) = Settings.project + "-" + suffix

    def base(suffix:String)  = file(suffix)
    def settings             = BuildSettings.defaults
  }
}
