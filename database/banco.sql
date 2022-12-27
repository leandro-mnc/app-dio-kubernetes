CREATE TABLE mensagens (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NULL DEFAULT NULL,
    `comentario` VARCHAR(255) NULL DEFAULT NULL,
    `ip` VARCHAR(15) NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
) Engine=InnoDB  charset=utf8mb4 collate=utf8mb4_unicode_ci;