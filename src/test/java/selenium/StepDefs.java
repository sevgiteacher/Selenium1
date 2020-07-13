package selenium;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static selenium.SeleniumHelper.*;

public class StepDefs {

    @Given("user navigates {string}")
    public void userNavigates(String url) throws InterruptedException {
        navigateHelper(url);
    }

    @When("user enters {string} to {string} area")
    public void userEntersToArea(String input, String area) throws InterruptedException {
        enterToAreaHelper(input, area);
    }

    @Then("user views {string}")
    public void userViews(String arg0) {
        userViewsHelper(arg0);
    }

    @And("user clicks {string}")
    public void userClicks(String element) throws InterruptedException {
        clickHelper(element);
    }

    @Then("user should see {string}")
    public void userShouldSee(String element) {
        userShouldSeeHelper(element);
    }


    @And("user move {string} to {string} area")
    public void userMoveToArea(String fileName, String area) {
        moveToHelper(fileName, area);
    }

}
