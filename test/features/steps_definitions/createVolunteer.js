//cucumber

const { Given, When, Then, AfterAll } = require('@cucumber/cucumber');
const { Builder, By, Capabilities, Key } = require('selenium-webdriver');
const { expect } = require('chai');

require("chromedriver");

// driver setup
const capabilities = Capabilities.chrome();
capabilities.set('chromeOptions', { "w3c": false });
const driver = new Builder().withCapabilities(capabilities).build();
let BaseUrl="https://dev-front-startamericas.web.app/login"

Given('I have browsed to the Start Americas Together homepage',async function () {
    await driver.get(BaseUrl);
    await driver.manage().window().maximize();
});

When('I press the login button at the right corner',async function () {
   let xpath = '/html/body/div/div[2]/header/div[1]/div[3]/button/span[1]';
   await driver.findElement(By.xpath(xpath)).click();
});


When('I press the ¿No tienes cuenta? option',async function () {
    let xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/div[4]/a';
    await driver.findElement(By.xpath(xpath)).click();
});

When('I fill {string}, {string},{string},{string},{string} and {string} in the crear cuenta page',async function (nom, apellido, correo, tel, pass, confpass) {
    await driver.findElement(By.name('username')).sendKeys(nom);
    await driver.findElement(By.name('lastname')).sendKeys(apellido);
    await driver.findElement(By.name('email')).sendKeys(correo);
    await driver.findElement(By.name('phone')).sendKeys(tel);
    await driver.findElement(By.name('password')).sendKeys(pass);
    await driver.findElement(By.name('confirmPassword')).sendKeys(confpass);
});

When('I press Crear Cuenta start',async function () {
    let xpath = '/html/body/div/div[2]/div[1]/div/div/div[2]/div[3]/form/div[7]/button/span[1]';
    await driver.findElement(By.xpath(xpath)).click();
});

Then('the user will be created and can login with my {string} and {string}',async function (email, password) {
    await driver.findElement(By.name('email')).sendKeys(email);
    await driver.findElement(By.name('password')).sendKeys(password);
    await driver.quit();
});

AfterAll(async () => {
    await driver.close();
  });
