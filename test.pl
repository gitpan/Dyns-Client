use Test;
BEGIN { plan tests => 4 };

use Dyns::Client;
ok(1); 

my $dc = Dyns::Client->new();
ok($dc);

my $ip = $dc->get_ip('eth0');
ok($ip);

ok(	$dc->update(
			-username 	=> 'username',
			-password 	=> 'password',
			-hostname 	=> 'host',
			-domain	 	=> 'dyns.cx',
			-ip		 	=> $ip 
			)
  );
