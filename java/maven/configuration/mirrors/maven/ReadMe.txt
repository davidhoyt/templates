

populate-mirror/
  A netbeans project that when built will cause external dependencies to be downloaded to the mirrored maven repo. You should have a Sonatype nexus mirror running before doing this "build." Be sure and do a "Clean and Build" since maven will need additional plugins for doing a clean. Afterward, download all javadocs/source for the dependencies AND the test dependencies. Then hit "Generate Javadocs" to download more dependencies. Then create a new maven project in Netbeans which can be completely empty. This will populate the nexus mirror with the libraries netbeans/maven will need to create the appropriate projects. Then build it. Then delete the project.

sonatype-work/
  Contains a copy of the nexus configuration that will define what repositories we're proxying. There are some changes from the defaults, so it's important that this configuration is used.