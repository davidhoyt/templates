package com.github.davidhoyt

import org.junit.runner.RunWith
import org.specs._
import org.specs.matcher._
import org.specs.runner.{ JUnitSuiteRunner, JUnit }
//import org.scalacheck.Gen

import org.junit._
import Assert._


@RunWith(classOf[JUnitSuiteRunner])
class ScalaTest extends Specification with JUnit /*with ScalaCheck*/ {
  "ScalaTest" should {
    "allow " in {
      //0
    }
    "deny " in {
      //0
    }
  }
  
  @Test def sample() {
    assertTrue(true)
  }
}

object ScalaTestMain {
  def main(args: Array[String]) {
    new ScalaTest().main(args)
  }
}