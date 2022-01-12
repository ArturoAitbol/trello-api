package trello.ui.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ListCreated extends AbstractPageObject {

    private String ADD_CARD_XPATH = "//textarea[text()='%s']/../following-sibling::div//a[contains(@class,'open-card-composer')]";

    private String CARD_XPATH = "//textarea[text()='%s']/../following-sibling::div//span[@class='list-card-title js-card-name']";

    private String CARD_BY_NAME_XPATH = "//div/span[@class='list-card-title js-card-name' and text() = '%s']";

    @FindBy(css = ".list-header")
    private WebElement listNameLabel;

    @FindBy(css = ".open-card-composer")
    private WebElement addCardButton;

    public String getListName() {
        return action.getText(this.listNameLabel);
    }
}
