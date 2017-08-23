import org.craftercms.aws.AWSHelper

logger.info("Calling helper method a b c d")

return amethod() + " RUSS :"+ AWSHelper.doStuff()



  public static String amethod() {
      def a = 1
      def b = 2
      return "HELLO  : " + a + b
  }