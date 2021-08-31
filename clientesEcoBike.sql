-- -----------------------------------------------------
-- Table `mydb`.`Clientes EcoDosRuedas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Clientes EcoDosRuedas` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes bicimoto` (
  `alias` CHAR(20) NULL,
  `nombre_apellido` CHAR(20) NULL,
  `email` CHAR(45) NULL,
  `Celular` INT (11) NULL,
  `Contraseña` INT,
  `FechaNacimiento` DATETIME NULL,
  `IntenciónCompra_Registro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Alias`),
  CONSTRAINT `fk_Clientes EcoDosRuedas_IntenciónCompra1`
    FOREIGN KEY (`IntenciónCompra_Registro`)
    REFERENCES `mydb`.`IntenciónCompra` (`Registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SHOW WARNINGS;


SHOW WARNINGS;
SELECT * FROM bicimoto.clientes;