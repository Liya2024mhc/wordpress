In  divi wordpress
in gravity form
i have form three radio button 
so when i click on member the total amount due i s$1,200.00 this is coming on the pdf ie invoice total $1200
when i click on sponsor/vendor sponsor fee  $2,500.00 and addition sponsor fee for one person is $1200 if we increase the quantity by 2 then total amount fee would $2500 + ($1200 + $1200) = $4900 
so these need to be in pdf the invoice total is $4900
for guest saturday price $100 sunday price $150 tuesday $150 hese also increase when we give quantity to 2 if the person selects saturday, sunday, tuesday is 1 then the total amunt due is $400 these can be varies
so in pdf for guest invoice total is will $400

now in pdf amount is 
<h2><strong>Invoice Total:</strong></h2>
    <?php if (!empty($member_address)): ?>
    <p>$1,200.00</p>
    <?php endif; ?>
    <?php if (!empty($sponsor_address)): ?>
    <p>$2,500.00</p>
    <?php endif; ?>
can you help me with these in dynamic chnage in pdf 

<?php
/**
 * Gravity PDF Custom Template
 */

// Required to include Gravity PDF helper functions
if (!class_exists('GFForms')) {
    return;
}

// Get entry data
$member_type = rgar($entry, '1'); // Radio field (Member / Sponsor / Guest) — replace '1' with actual field ID
$guest_saturday_qty = (int) rgar($entry, '2'); // Saturday Guest quantity — replace with actual ID
$guest_sunday_qty   = (int) rgar($entry, '3'); // Sunday Guest quantity
$guest_tuesday_qty  = (int) rgar($entry, '4'); // Tuesday Guest quantity
$additional_sponsor_qty = (int) rgar($entry, '5'); // Additional Sponsor count — replace with actual ID

// Initialize total
$total = 0;

// Calculate total based on member type
if ($member_type === 'Member') {
    $total = 1200;
} elseif ($member_type === 'Sponsor/Vendor') {
    $total = 2500 + ($additional_sponsor_qty * 1200);
} elseif ($member_type === 'Guest') {
    $total = ($guest_saturday_qty * 100) + ($guest_sunday_qty * 150) + ($guest_tuesday_qty * 150);
}

// Start PDF HTML
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body { font-family: sans-serif; font-size: 12pt; }
        h2 { color: #333; }
        p { margin: 0 0 10px; }
    </style>
</head>
<body>

<h2><strong>Invoice</strong></h2>

<p><strong>Member Type:</strong> <?php echo esc_html($member_type); ?></p>

<?php if ($member_type === 'Sponsor/Vendor'): ?>
    <p><strong>Sponsor Base Fee:</strong> $2,500.00</p>
    <p><strong>Additional Sponsor Quantity:</strong> <?php echo $additional_sponsor_qty; ?> × $1,200.00</p>
<?php endif; ?>

<?php if ($member_type === 'Guest'): ?>
    <p><strong>Saturday Guests:</strong> <?php echo $guest_saturday_qty; ?> × $100.00</p>
    <p><strong>Sunday Guests:</strong> <?php echo $guest_sunday_qty; ?> × $150.00</p>
    <p><strong>Tuesday Guests:</strong> <?php echo $guest_tuesday_qty; ?> × $150.00</p>
<?php endif; ?>

<h2><strong>Invoice Total:</strong></h2>
<p><strong>$<?php echo number_format($total, 2); ?></strong></p>

</body>
</html>







for self improvement
1. make a movement in body for everyday
2. make 2hrs not in involvement in mmoring and in night for phone
3. to do list for a day or a month
4. maintain on food
5. sunday planning day
6. constant education
7. having mindful habit
8. clear on your priorities
9. make a time for youself - no agenda time
10. flexibility






sleep regularity
6 habits in a day for 21 days

1. thinking grow rich 
2. lay of attraction, universe
3. podcast like alexander moussie, bob poptro
4. 5am clock book
	Pocket #1 – 5:00am to 5:20am
	do heavy works like walking, execise, like something sort of sweating works
	
	Pocket #2 – 5:20am to 5:40am
	dedicated to a period of deep peace and reflection.
	using journaling, meditation, and affirmations.

	Pocket #3: 5:40am to 6:00am
	involve reading a book, listening to a podcast, or watching an educational video.
5. 90/90/1 rule : For 90 days, spend the first 90 minutes of your workday focusing on just one task. During this time, avoid technology and distractions to perform at your best.
6. 60/10 method: after 90/90/1 work, work hard for 60 minutes without distraction and take 10 minutes break and do any activity you like in this period and repeat this process
7. During your morning victory hour, spend some time writing down 5 things that you wish to accomplish that day
8. schedule you week and take 30 min in sundays	
9. spend 60 minutes of each day studying and learning. Find a good book, a good online course, or a trusted mentor to help you grow and develop.
