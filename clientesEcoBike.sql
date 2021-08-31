-- -----------------------------------------------------
-- Table `mydb`.`Clientes EcoDosRuedas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Clientes EcoDosRuedas` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes EcoDosRuedas` (
  `AliasCliente` VARCHAR(45) NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `Celular` INT NULL DEFAULT CURRENT_TIMESTAMP,
  `Contraseña` INT NULL,
  `FechaNacimiento` DATETIME NULL,
  `IntenciónCompra_Registro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AliasCliente`, `IntenciónCompra_Registro`),
  CONSTRAINT `fk_Clientes EcoDosRuedas_IntenciónCompra1`
    FOREIGN KEY (`IntenciónCompra_Registro`)
    REFERENCES `mydb`.`IntenciónCompra` (`Registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SHOW WARNINGS;
CREATE INDEX `fk_Clientes EcoDosRuedas_IntenciónCompra1_idx` ON `mydb`.`Clientes EcoDosRuedas` (`IntenciónCompra_Registro` ASC) VISIBLE;

SHOW WARNINGS;
SELECT * FROM bicimoto.clientes;