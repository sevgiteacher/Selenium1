package selenium;

import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;


import static selenium.LocatorMethods.driver;
import static selenium.LocatorMethods.locateElements;

public class SeleniumHelper {

    public static void userShouldSeeHelper(String element){
        boolean displayed = locateElements(element).isDisplayed();
        Assert.assertEquals(true,displayed);
    }

    public static void navigateHelper(String url) throws InterruptedException {
        driver.navigate().to(url);
        driver.manage().window().maximize();
        Thread.sleep(1000);
    }

    public static void enterToAreaHelper(String input,String element) throws InterruptedException {
        locateElements(element).sendKeys(input+ Keys.ENTER);
        Thread.sleep(1000);
    }

    public static void clickHelper(String element) throws InterruptedException {
        locateElements(element).click();
        Thread.sleep(1000);
    }

    public static void shouldSeePageHelper(String element){
        boolean displayed = locateElements(element).isDisplayed();
        Assert.assertEquals(true,displayed);
    }

    public static void userViewsHelper(String element) {
        boolean displayed = locateElements(element).isDisplayed();
        Assert.assertEquals(true, displayed);
    }

    public static void moveToHelper(String element, String element2){
        WebElement element3 = locateElements(element2);
        WebElement element1 = locateElements(element);
        Actions action = new Actions(driver);

        action.moveToElement(element1).click().moveToElement(element3).build().perform();
    }

}
