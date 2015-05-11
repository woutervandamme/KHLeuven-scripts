use LWP::Simple;

$datum   = '06-04-2015';
$prestatie = "stage - Kunstmaan";
# my ($day,$month,$year)=($tm->mday,$tm->month,$tm->year);

use Time::localtime;
$tm = localtime;
$min = $tm->min;

$tijd =  "20150310" .$tm->hour . $tm->min;
my $browser = LWP::UserAgent->new;

$url = 'https://www.khleuven.be/sis/2014/opleidingen/162/stagetypes/247/stagemomenten/1165/studenten/5873/stagestoelen/30100/prestaties/add/' . $tijd . '/' . $tijd;

# print $url;
my $response = $browser->post(
  $url ,
  [
    'startdatum'      => $datum,
    'einddatum'       => $datum,
    'prestatie'       => $prestatie,
  ],
);

print $response;


