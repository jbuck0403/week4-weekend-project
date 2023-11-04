INSERT INTO dealership_positions(position_name,
                               position_description
) VALUES (
    'Sales',
    'Handles the sales of dealership-owned vehicles to customers'
), (
    'Mechanic',
    'Handles customer vehicle service and repairs, as well as maintenance on dealership-owned vehicles'
);

INSERT INTO available_services(service_alias,
                             service_description,
                             service_price
) VALUES (
    'Oil Change',
    'An oil change service entails replacing the old engine oil with fresh oil and often includes changing the oil filter to maintain engine performance and lubrication',
    75
), (
    'Brake Pad Replacement',
    'Brake pad replacement is a service where worn or damaged brake pads are removed and replaced with new ones to maintain safe and effective braking in a vehicle',
    300
), (
    'Rotate Tires',
    'A tire rotation service involves repositioning the tires on a vehicle to ensure even wear and extend their lifespan, typically by moving the front tires to the rear and vice versa',
    45
);

INSERT INTO dealership_employees(first_name,
                               last_name,
                               position_id
) VALUES (
    'Jordan',
    'Belfort',
    1
), (
    'Joey',
    'O''Brien',
    1
), (
    'Travis',
    'Bickle',
    2
), (
    'Tim',
    'Taylor',
    2
);

INSERT INTO customer(first_name,
                   last_name,
                   customer_address,
                   phone_number
) VALUES (
    'Dominic',
    'Toretto',
    '722 East Kensington Road',
    '(323)555-6439'
), (
    'Miles',
    'Prower',
    '127 Peachtree Street Northeast',
    '(855)257-2265'
), (
    'Ricky',
    'Bobby',
    '17240 Connor Quay Ct',
    '(901)604-4052'
);

INSERT INTO vehicles_in_system(make,
                             model,
                             vehicle_year,
                             color
) VALUES (
    'Dodge',
    'Charger R/T',
    1970,
    'Black'
), (
    'Subaru',
    'Impreza WRX',
    2006,
    'Red'
), (
    'Chevrolet',
    'Chevelle',
    1969,
    'Black & Yellow'
);

INSERT INTO vehicle_inventory(vehicle_id,
                            vehicle_price,
                            vehicle_sold
) VALUES (
    2,
    11999,
    'true'
);

INSERT INTO vehicles_to_service(customer_id,
                              vehicle_id
) VALUES (
    1,
    1
), (
    3,
    3
);

INSERT INTO vehicle_sale_invoice(customer_id,
                               vehicle_id,
                               employee_id
) VALUES (
    2,
    2,
    1
);

INSERT INTO vehicle_service_ticket(vehicle_id,
                                 employee_id
) VALUES (
    1,
    3
), (
    3,
    4
);

INSERT INTO rendered_services(ticket_id,
                            service_id,
                            employee_id
) VALUES (
    1,
    2,
    4
), (
    1,
    3,
    4
), (
    2,
    1,
    4
);

SELECT * FROM customer;
SELECT * FROM dealership_employees;
SELECT * FROM dealership_positions;
SELECT * FROM available_services;
SELECT * FROM vehicle_inventory;
SELECT * FROM rendered_services;
SELECT * FROM vehicle_sale_invoice;
SELECT * FROM vehicle_service_ticket;
SELECT * FROM vehicles_in_system;
SELECT * FROM vehicles_to_service;