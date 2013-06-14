object Settings {
  val project       = "my-project"

  val version       = "1.0-SNAPSHOT"

  val organization  = "com.github.myproject"

  val scalaVersion  = "2.10.2"

  val scalacOptions = Seq("-deprecation", "-unchecked", "-feature", "-Xelide-below", "900")
  val javacOptions  = Seq("-Xlint:unchecked")

  def prompt        = GitPrompt.build
}

