import sbt._
import Keys._

object Projects extends Build {

  lazy val root = Project(
    id        = ThisProject.id,
    base      = ThisProject.base,
    settings  = ThisProject.settings,

    aggregate = Seq(core)
  )

  lazy val core = Project(
    id        = ThisProject.module("core"),
    base      = ThisProject.module.base("core"),
    settings  = ThisProject.settings
  )

}

