--insert data for tony stark in `account`
INSERT INTO public.account(
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );
--update tony stark account type to `Admin`
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;
--Delete the tony stark record
DELETE FROM public.account
WHERE account_id = 1;
--Replace interior to a huge interior from `inventory`
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE inv_id = 10;
--inner join for `inventroy` and `classification`
SELECT inv_make,
    inv_model,
    classification_name
FROM public.inventory
    INNER JOIN public.classification ON inventory.classification_id = classification.classification_id
WHERE inventory.classification_id = 2;
--Replacing /images/ with /images/vehicles/ in the `inventory`
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');