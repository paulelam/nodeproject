-- CreateTable
CREATE TABLE `assign_op_ss_cat_location` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_operateur_economique` BIGINT UNSIGNED NOT NULL,
    `id_emplacement` BIGINT UNSIGNED NULL,
    `status` INTEGER NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `sous_catdetails` TEXT NULL,
    `activity_sector` VARCHAR(1000) NULL,
    `datecomparer` BIGINT NULL,
    `synchronizedstatus` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `assignation_employes` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `quartier_id` INTEGER NULL,
    `zone_id` INTEGER NULL,
    `sous_zone_id` INTEGER NULL,
    `marche_id` INTEGER NULL,
    `troncon_id` INTEGER NULL,
    `nb_identification_emplacement` INTEGER NULL,
    `nb_identification_contribuable` INTEGER NULL,
    `montant_attendu_zone` VARCHAR(50) NULL,
    `date_debut` VARCHAR(191) NULL,
    `date_fin` VARCHAR(191) NULL,
    `status` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `assignopcatlocation_activity` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `assign_op_ss_cat_location_id` INTEGER NULL,
    `sous_categories_id` INTEGER NOT NULL,
    `statuts` BOOLEAN NOT NULL DEFAULT true,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `year_odp` INTEGER NULL DEFAULT 0,
    `length_odp` VARCHAR(255) NULL DEFAULT '0',
    `width_odp` VARCHAR(255) NULL DEFAULT '0',
    `amount_odp` VARCHAR(255) NULL DEFAULT '0',
    `amount_pub` VARCHAR(255) NULL DEFAULT '0',
    `min_pub` VARCHAR(255) NULL DEFAULT '0',
    `fivemin_pub` VARCHAR(255) NULL DEFAULT '0',
    `sixmonth_amount` VARCHAR(255) NULL DEFAULT '0',
    `datecomparer` BIGINT NULL DEFAULT 0,
    `synchronizedstatus` INTEGER NULL DEFAULT 1,

    INDEX `assign_op_ss_cat_location_id`(`assign_op_ss_cat_location_id`),
    INDEX `assign_op_ss_cat_location_id_2`(`assign_op_ss_cat_location_id`),
    INDEX `sous_categories_id`(`sous_categories_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `calendar_day` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `calendar_month_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `code` VARCHAR(255) NULL,
    `status` BOOLEAN NOT NULL,
    `datecomparer` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `calendar_month` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_calendar_year` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `name_en` VARCHAR(255) NULL,
    `month_date_payment` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `status` BOOLEAN NOT NULL,
    `datecomparer` BIGINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `calendar_semester` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `calendar_year_id` INTEGER NULL,
    `name` VARCHAR(255) NULL,
    `details` VARCHAR(255) NULL,
    `status` BOOLEAN NULL,
    `datecomparer` BIGINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `calendar_year` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` BOOLEAN NOT NULL,
    `datecomparer` BIGINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cash` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_mairie` INTEGER NULL,
    `code` VARCHAR(255) NOT NULL,
    `libelle` VARCHAR(255) NOT NULL,
    `status` BOOLEAN NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    INDEX `id`(`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `categories` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(245) NULL,
    `status` INTEGER NULL,
    `id_nature` BIGINT NULL,
    `taux` VARCHAR(255) NULL,
    `compte` VARCHAR(255) NULL,
    `nature_taxe` VARCHAR(255) NULL,
    `assiette_periodicite_libelle` VARCHAR(255) NULL,
    `assiette_periodicite_frequence` INTEGER NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
    `montant` INTEGER NULL,
    `montant_declarer` INTEGER NULL,
    `datecomparer` INTEGER NULL,
    `synchronizedstatus` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `communes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `compte_fiscales` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_operateur_eco` INTEGER NULL,
    `id_mairie` INTEGER NULL,
    `type_compte` VARCHAR(100) NOT NULL,
    `numero_compte` VARCHAR(200) NOT NULL,
    `libelle` VARCHAR(200) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `status` BOOLEAN NULL,
    `datecomparer` BIGINT NULL,
    `synchronizedstatus` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `config` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` INTEGER NOT NULL DEFAULT 0,
    `datecomparer` BIGINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `document_emplacements` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `numero` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `emplacement_id` VARCHAR(191) NOT NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `elements_administratifs` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(191) NULL,
    `type` VARCHAR(191) NULL,
    `status` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `emplacements` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `numero` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `adresse` VARCHAR(191) NOT NULL,
    `doc1` VARCHAR(191) NULL,
    `doc2` VARCHAR(191) NULL,
    `phone` VARCHAR(191) NULL,
    `longitude` VARCHAR(191) NULL DEFAULT '0',
    `latitude` VARCHAR(191) NULL,
    `troncon_id` INTEGER NULL DEFAULT 4,
    `marche_id` INTEGER NULL DEFAULT 43,
    `quartier_id` INTEGER NULL DEFAULT 163,
    `location_type_id` INTEGER UNSIGNED NOT NULL,
    `status` INTEGER NULL DEFAULT 3,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `immatriculation` VARCHAR(255) NULL DEFAULT '0',
    `datecomparer` BIGINT NULL DEFAULT 0,
    `synchronizedstatus` INTEGER NULL DEFAULT 1,
    `inserted` INTEGER NULL DEFAULT 0,
    `pas_de_porte` VARCHAR(255) NULL DEFAULT '0',
    `montant` VARCHAR(255) NULL DEFAULT '0',
    `mairie` INTEGER NULL DEFAULT 0,
    `control_users_id` INTEGER NULL,
    `control_date` DATETIME(0) NULL,

    INDEX `emplacements_location_type_id_foreign`(`location_type_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `employees` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `surname` VARCHAR(200) NOT NULL,
    `name` VARCHAR(200) NOT NULL,
    `phone` VARCHAR(14) NOT NULL,
    `photo` VARCHAR(200) NOT NULL,
    `employee_type_id` INTEGER NOT NULL,
    `mobiletypeusers_id` INTEGER NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `employees_types` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `status` INTEGER NOT NULL,
    `element_administratif_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `failed_jobs` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `connection` TEXT NOT NULL,
    `queue` TEXT NOT NULL,
    `payload` LONGTEXT NOT NULL,
    `exception` LONGTEXT NOT NULL,
    `failed_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `forfait` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `package_values` VARCHAR(20) NOT NULL,
    `status` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `hierachies` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `superior_hierarchical_id` INTEGER NOT NULL,
    `employee_type_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `users_id` INTEGER NULL,
    `tax_moovment_id` INTEGER NULL,
    `incoming_payment_id` INTEGER NULL,
    `operator_ecomiq_id` INTEGER NULL,
    `details` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `incoming_payment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `calendar_day_id` INTEGER NULL DEFAULT 0,
    `calendar_month_id` INTEGER NULL DEFAULT 0,
    `calendar_semester_id` INTEGER NULL DEFAULT 0,
    `calendar_year_id` INTEGER NULL DEFAULT 0,
    `status` INTEGER NOT NULL DEFAULT 1,
    `datecomparer` BIGINT NULL DEFAULT 0,
    `assignopcatlocation_activity_id` INTEGER NOT NULL,
    `payment_frequency_id` INTEGER NOT NULL,
    `operateur_economique_id` INTEGER NOT NULL,
    `amountcalculate` VARCHAR(255) NULL DEFAULT '0',
    `incoming_amount` VARCHAR(255) NULL DEFAULT '0',
    `minutestatus` TINYINT NULL DEFAULT 0,
    `synchronizedstatus` INTEGER NULL DEFAULT 1,
    `inserted` INTEGER NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `location_type` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mairie` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `libelle` VARCHAR(200) NOT NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `marches` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `lat` DOUBLE NULL DEFAULT 0,
    `long` DOUBLE NULL DEFAULT 0,
    `status` INTEGER NULL,
    `description` TEXT NULL,
    `adresse` TEXT NULL,
    `horaires` TEXT NULL,
    `id_quartier` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `migrations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `migration` VARCHAR(255) NOT NULL,
    `batch` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mobiletypeusers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` TINYINT NOT NULL,
    `datecomparer` CHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `model_has_permissions` (
    `permission_id` BIGINT UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) NOT NULL,
    `model_id` BIGINT UNSIGNED NOT NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `model_has_roles` (
    `role_id` BIGINT UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) NOT NULL,
    `model_id` BIGINT UNSIGNED NOT NULL,

    INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`),
    PRIMARY KEY (`role_id`, `model_id`, `model_type`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oauth_access_tokens` (
    `id` VARCHAR(100) NOT NULL,
    `user_id` BIGINT UNSIGNED NULL,
    `client_id` BIGINT UNSIGNED NOT NULL,
    `name` VARCHAR(191) NULL,
    `scopes` TEXT NULL,
    `revoked` BOOLEAN NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `expires_at` DATETIME(0) NULL,

    INDEX `oauth_access_tokens_user_id_index`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oauth_auth_codes` (
    `id` VARCHAR(100) NOT NULL,
    `user_id` BIGINT UNSIGNED NOT NULL,
    `client_id` BIGINT UNSIGNED NOT NULL,
    `scopes` TEXT NULL,
    `revoked` BOOLEAN NOT NULL,
    `expires_at` DATETIME(0) NULL,

    INDEX `oauth_auth_codes_user_id_index`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oauth_clients` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT UNSIGNED NULL,
    `name` VARCHAR(191) NOT NULL,
    `secret` VARCHAR(100) NULL,
    `provider` VARCHAR(191) NULL,
    `redirect` TEXT NOT NULL,
    `personal_access_client` BOOLEAN NOT NULL,
    `password_client` BOOLEAN NOT NULL,
    `revoked` BOOLEAN NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `oauth_clients_user_id_index`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oauth_personal_access_clients` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `client_id` BIGINT UNSIGNED NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oauth_refresh_tokens` (
    `id` VARCHAR(100) NOT NULL,
    `access_token_id` VARCHAR(100) NOT NULL,
    `revoked` BOOLEAN NOT NULL,
    `expires_at` DATETIME(0) NULL,

    INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oparator_company` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `details` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `status` TINYINT NOT NULL DEFAULT 1,
    `datecomparer` BIGINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oparator_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `operateur_economiques` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `operator_person_id` INTEGER NULL,
    `operator_company_id` INTEGER NULL DEFAULT 0,
    `phone_number` VARCHAR(20) NULL,
    `economic_operator_type_id` TINYINT NOT NULL,
    `users_id` INTEGER NULL,
    `datecomparer` BIGINT NULL DEFAULT 0,
    `synchronizedstatus` INTEGER NULL,
    `inserted` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `operator_person` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(200) NULL,
    `surname` VARCHAR(200) NULL,
    `name` VARCHAR(250) NULL,
    `profession` VARCHAR(250) NULL,
    `dateofbirth` DATE NULL,
    `placeofbirth` VARCHAR(191) NULL,
    `fathername` VARCHAR(191) NULL,
    `mothername` VARCHAR(191) NULL,
    `photo` VARCHAR(200) NULL,
    `idcardscan1` VARCHAR(200) NULL,
    `idcardscan2` VARCHAR(200) NULL,
    `cardnumber` VARCHAR(191) NULL,
    `status` INTEGER NULL,
    `placeofresidence` VARCHAR(191) NULL,
    `nationality` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `dateofbirthstring` VARCHAR(255) NULL,
    `datecomparer` BIGINT NULL,
    `synchronizedstatus` INTEGER NULL,
    `inserted` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `organigrammes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NULL,
    `position` INTEGER NULL,
    `parent_id` INTEGER NULL,
    `service_id` INTEGER NULL,
    `sous_direction_id` INTEGER NULL,
    `direction_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `password_reset_tokens` (
    `email` VARCHAR(191) NOT NULL,
    `token` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`email`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `payment_type_id` INTEGER NOT NULL,
    `incoming_payment_id` INTEGER NOT NULL,
    `status` TINYINT NOT NULL,
    `user_id` INTEGER NOT NULL DEFAULT 0,
    `operator_economique_id` INTEGER NOT NULL,
    `amount` BIGINT NOT NULL,
    `amount_paid` VARCHAR(255) NULL DEFAULT '0',
    `quartier_id` INTEGER NULL DEFAULT 163,
    `market_id` INTEGER NULL DEFAULT 43,
    `sous_categorie_id` INTEGER NULL,
    `calendar_day_id` INTEGER NULL DEFAULT 0,
    `calendar_month_id` INTEGER NULL DEFAULT 0,
    `calendar_year_id` INTEGER NULL DEFAULT 0,
    `calendar_semester_id` INTEGER NULL DEFAULT 0,
    `payment_origin` INTEGER NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `datecomparer` BIGINT NULL DEFAULT 0,
    `synchronizedstatus` INTEGER NULL DEFAULT 1,
    `agent` VARCHAR(255) NULL DEFAULT ' ',
    `daterdv` VARCHAR(255) NULL DEFAULT '  ',
    `nrecu` VARCHAR(255) NULL DEFAULT ' ',
    `nrecumain` VARCHAR(255) NULL DEFAULT 'RAS ',
    `amount_number` VARCHAR(255) NULL DEFAULT ' ',
    `payment_date_time` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_frequency` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` TINYINT NOT NULL,
    `datecomparer` BIGINT NOT NULL,
    `synchronizedstatus` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` INTEGER NOT NULL,
    `datecomparer` BIGINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paymentbis` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `payment_type_id` INTEGER NOT NULL,
    `incoming_payment_id` INTEGER NOT NULL,
    `status` TINYINT NOT NULL,
    `user_id` INTEGER NOT NULL,
    `operator_economique_id` INTEGER NOT NULL,
    `amount` BIGINT NOT NULL,
    `amount_paid` VARCHAR(255) NULL,
    `quartier_id` INTEGER NULL,
    `market_id` INTEGER NULL,
    `sous_categorie_id` INTEGER NULL,
    `calendar_day_id` INTEGER NULL,
    `calendar_month_id` INTEGER NULL,
    `calendar_year_id` INTEGER NULL,
    `payment_origin` INTEGER NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `datecomparer` BIGINT NULL,
    `synchronizedstatus` INTEGER NULL,
    `agent` VARCHAR(255) NULL,
    `daterdv` VARCHAR(255) NULL,
    `nrecu` VARCHAR(255) NULL,
    `nrecumain` VARCHAR(255) NULL,
    `amount_number` VARCHAR(255) NULL,
    `payment_date_time` VARCHAR(255) NULL,
    `calendar_semester_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `permissions` (
    `id` BIGINT UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `guard_name` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `personal_access_tokens` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `tokenable_type` VARCHAR(191) NOT NULL,
    `tokenable_id` BIGINT UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `token` VARCHAR(64) NOT NULL,
    `abilities` TEXT NULL,
    `last_used_at` TIMESTAMP(0) NULL,
    `expires_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    UNIQUE INDEX `personal_access_tokens_token_unique`(`token`),
    INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `planification_encaissements` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date_debut` VARCHAR(100) NULL,
    `date_fin` VARCHAR(100) NULL,
    `marche_id` INTEGER NULL,
    `montant_attendu_zone` VARCHAR(100) NULL,
    `nb_identification_emplacement` INTEGER NULL,
    `nb_identification_contribuable` INTEGER NULL,
    `montant` INTEGER NULL,
    `quartier_id` INTEGER NULL,
    `sous_zone_id` INTEGER NULL,
    `troncon_id` INTEGER NULL,
    `user_id` INTEGER NULL,
    `zone_id` INTEGER NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `quartiers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(250) NOT NULL,
    `code` VARCHAR(200) NOT NULL,
    `zone_id` INTEGER NULL,
    `sous_zone_id` INTEGER NOT NULL,
    `status` INTEGER NOT NULL,
    `lat` DOUBLE NULL,
    `long` DOUBLE NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `role_has_permissions` (
    `permission_id` BIGINT UNSIGNED NOT NULL,
    `role_id` BIGINT UNSIGNED NOT NULL,

    INDEX `role_has_permissions_role_id_foreign`(`role_id`),
    PRIMARY KEY (`permission_id`, `role_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `roles` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `guard_name` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sous_categories` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(245) NULL,
    `libelle` VARCHAR(245) NULL,
    `status` INTEGER NULL,
    `id_categorie` INTEGER NOT NULL,
    `id_service` INTEGER NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `nature_taxe` VARCHAR(255) NULL,
    `taux` VARCHAR(255) NULL,
    `assiette_periodicite_libelle` VARCHAR(255) NULL,
    `assiette_periodicite_frequence` INTEGER NULL,
    `montant` INTEGER NULL,
    `montant_declarer` INTEGER NULL,
    `datecomparer` BIGINT NULL DEFAULT 0,
    `synchronizedstatus` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sous_zones` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `latitude` VARCHAR(191) NULL,
    `longitude` VARCHAR(191) NULL,
    `status` INTEGER NULL,
    `id_zone` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tax_moovment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `debit_tax_id` INTEGER NOT NULL,
    `credit_tax_id` INTEGER NOT NULL,
    `payment_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tax_moovmentbis` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `debit_tax_id` INTEGER NOT NULL,
    `credit_tax_id` INTEGER NOT NULL,
    `payment_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `troncons` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(200) NOT NULL,
    `name` VARCHAR(200) NOT NULL,
    `longeur` DOUBLE NULL,
    `lat` DOUBLE NULL,
    `long` DOUBLE NULL,
    `quartier_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `status` INTEGER NOT NULL,
    `type_troncon` VARCHAR(200) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `employee_id` INTEGER UNSIGNED NULL,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `email_verified_at` TIMESTAMP(0) NULL,
    `password` VARCHAR(191) NULL,
    `status` TINYINT NOT NULL,
    `remember_token` VARCHAR(100) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    UNIQUE INDEX `users_name_unique`(`name`),
    UNIQUE INDEX `users_email_unique`(`email`),
    INDEX `users_employee_id_foreign`(`employee_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_cash` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `users_id` INTEGER NULL,
    `cash_id` INTEGER NULL,
    `status` TINYINT NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `zones` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(250) NOT NULL,
    `name` VARCHAR(250) NOT NULL,
    `status` INTEGER NOT NULL,
    `commune_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
