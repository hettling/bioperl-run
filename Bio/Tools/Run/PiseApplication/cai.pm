
=head1 NAME

Bio::Tools::Run::PiseApplication::cai

=head1 SYNOPSIS

  #

=head1 DESCRIPTION

Bio::Tools::Run::PiseApplication::cai

      Bioperl class for:

	CAI	CAI codon adaptation index (EMBOSS)

      Parameters:


		cai (String)


		init (String)


		input (Paragraph)
			input Section

		seqall (Sequence)
			seqall -- DNA [sequences] (-seqall)
			pipe: seqsfile

		required (Paragraph)
			required Section

		cfile (Excl)
			Codon usage file (-cfile)

		output (Paragraph)
			output Section

		outfile (OutFile)
			outfile (-outfile)

		auto (String)


=cut

#'
package Bio::Tools::Run::PiseApplication::cai;

use vars qw(@ISA);
use strict;
use Bio::Tools::Run::PiseApplication;

@ISA = qw(Bio::Tools::Run::PiseApplication);

=head2 new

 Title   : new()
 Usage   : my $cai = Bio::Tools::Run::PiseApplication::cai->new($remote, $email, @params);
 Function: Creates a Bio::Tools::Run::PiseApplication::cai object.
           This method should not be used directly, but rather by 
           a Bio::Factory::Pise instance:
           my $factory = Bio::Factory::Pise->new(-email => 'me@myhome');
           my $cai = $factory->program('cai');
 Example :
 Returns : An instance of Bio::Tools::Run::PiseApplication::cai.

=cut

sub new {
    my ($class, $remote, $email, @params) = @_;
    my $self = $class->SUPER::new($remote, $email);

# -- begin of definitions extracted from /local/gensoft/lib/Pise/5.a/PerlDef/cai.pm

    $self->{COMMAND}   = "cai";
    $self->{VERSION}   = "5.a";
    $self->{TITLE}   = "CAI";

    $self->{DESCRIPTION}   = "CAI codon adaptation index (EMBOSS)";

    $self->{CATEGORIES}   =  [  

         "nucleic:codon usage",
  ];

    $self->{DOCLINK}   = "http://www.uk.embnet.org/Software/EMBOSS/Apps/cai.html";

    $self->{_INTERFACE_STANDOUT} = undef;
    $self->{_STANDOUT_FILE} = undef;

    $self->{TOP_PARAMETERS}  = [ 
	"cai",
	"init",
	"input",
	"required",
	"output",
	"auto",

    ];

    $self->{PARAMETERS_ORDER}  = [
	"cai",
	"init",
	"input", 	# input Section
	"seqall", 	# seqall -- DNA [sequences] (-seqall)
	"required", 	# required Section
	"cfile", 	# Codon usage file (-cfile)
	"output", 	# output Section
	"outfile", 	# outfile (-outfile)
	"auto",

    ];

    $self->{TYPE}  = {
	"cai" => 'String',
	"init" => 'String',
	"input" => 'Paragraph',
	"seqall" => 'Sequence',
	"required" => 'Paragraph',
	"cfile" => 'Excl',
	"output" => 'Paragraph',
	"outfile" => 'OutFile',
	"auto" => 'String',

    };

    $self->{FORMAT}  = {
	"init" => {
		"perl" => ' "" ',
	},
	"input" => {
	},
	"seqall" => {
		"perl" => '" -seqall=$value -sformat=fasta"',
	},
	"required" => {
	},
	"cfile" => {
		"perl" => '" -cfile=$value"',
	},
	"output" => {
	},
	"outfile" => {
		"perl" => '" -outfile=$value"',
	},
	"auto" => {
		"perl" => '" -auto -stdout"',
	},
	"cai" => {
		"perl" => '"cai"',
	}

    };

    $self->{FILENAMES}  = {

    };

    $self->{SEQFMT}  = {
	"seqall" => [8],

    };

    $self->{GROUP}  = {
	"init" => -10,
	"seqall" => 1,
	"cfile" => 2,
	"outfile" => 3,
	"auto" => 4,
	"cai" => 0

    };

    $self->{BY_GROUP_PARAMETERS}  = [
	"init",
	"input",
	"cai",
	"required",
	"output",
	"seqall",
	"cfile",
	"outfile",
	"auto",

    ];

    $self->{SIZE}  = {

    };

    $self->{ISHIDDEN}  = {
	"init" => 1,
	"input" => 0,
	"seqall" => 0,
	"required" => 0,
	"cfile" => 0,
	"output" => 0,
	"outfile" => 0,
	"auto" => 1,
	"cai" => 1

    };

    $self->{ISCOMMAND}  = {
	"init" => 0,
	"input" => 0,
	"seqall" => 0,
	"required" => 0,
	"cfile" => 0,
	"output" => 0,
	"outfile" => 0,
	"auto" => 0,

    };

    $self->{ISMANDATORY}  = {
	"init" => 0,
	"input" => 0,
	"seqall" => 1,
	"required" => 0,
	"cfile" => 1,
	"output" => 0,
	"outfile" => 1,
	"auto" => 0,

    };

    $self->{PROMPT}  = {
	"init" => "",
	"input" => "input Section",
	"seqall" => "seqall -- DNA [sequences] (-seqall)",
	"required" => "required Section",
	"cfile" => "Codon usage file (-cfile)",
	"output" => "output Section",
	"outfile" => "outfile (-outfile)",
	"auto" => "",

    };

    $self->{ISSTANDOUT}  = {
	"init" => 0,
	"input" => 0,
	"seqall" => 0,
	"required" => 0,
	"cfile" => 0,
	"output" => 0,
	"outfile" => 0,
	"auto" => 0,

    };

    $self->{VLIST}  = {

	"input" => ['seqall',],
	"required" => ['cfile',],
	"cfile" => ['Ebmo.cut','Ebmo.cut','Etom.cut','Etom.cut','Erat.cut','Erat.cut','Ebsu.cut','Ebsu.cut','Echicken.cut','Echicken.cut','Etob.cut','Etob.cut','Echnt.cut','Echnt.cut','Eyscmt.cut','Eyscmt.cut','Ehin.cut','Ehin.cut','Echmp.cut','Echmp.cut','Ecal.cut','Ecal.cut','Evco.cut','Evco.cut','Epfa.cut','Epfa.cut','Esty.cut','Esty.cut','Echk.cut','Echk.cut','Eaidlav.cut','Eaidlav.cut','Esgi.cut','Esgi.cut','Emtu.cut','Emtu.cut','Ersp.cut','Ersp.cut','Esco.cut','Esco.cut','Ebna.cut','Ebna.cut','Ehuman.cut','Ehuman.cut','Eacc.cut','Eacc.cut','Eyeastcai.cut','Eyeastcai.cut','Eratsp.cut','Eratsp.cut','Ehma.cut','Ehma.cut','Erabbit.cut','Erabbit.cut','Erab.cut','Erab.cut','Emac.cut','Emac.cut','Eysc.cut','Eysc.cut','Emze.cut','Emze.cut','Espi.cut','Espi.cut','Epea.cut','Epea.cut','Ekla.cut','Ekla.cut','Eeca.cut','Eeca.cut','Echzmrubp.cut','Echzmrubp.cut','Eanidmit.cut','Eanidmit.cut','Esv40.cut','Esv40.cut','Epsy.cut','Epsy.cut','Eysc_h.cut','Eysc_h.cut','Eadenovirus5.cut','Eadenovirus5.cut','Espo_h.cut','Espo_h.cut','Eatu.cut','Eatu.cut','Eneu.cut','Eneu.cut','Epot.cut','Epot.cut','Edro_h.cut','Edro_h.cut','Ephix174.cut','Ephix174.cut','Epet.cut','Epet.cut','Ekpn.cut','Ekpn.cut','Ebme.cut','Ebme.cut','Ebovsp.cut','Ebovsp.cut','Esma.cut','Esma.cut','Etetsp.cut','Etetsp.cut','Ephy.cut','Ephy.cut','Exenopus.cut','Exenopus.cut','Eoncsp.cut','Eoncsp.cut','Exel.cut','Exel.cut','Esus.cut','Esus.cut','Eter.cut','Eter.cut','Epig.cut','Epig.cut','Erabsp.cut','Erabsp.cut','Espu.cut','Espu.cut','Ef1.cut','Ef1.cut','Erhm.cut','Erhm.cut','Emussp.cut','Emussp.cut','Engo.cut','Engo.cut','Emus.cut','Emus.cut','Eppu.cut','Eppu.cut','Ecre.cut','Ecre.cut','Esalsp.cut','Esalsp.cut','Easn.cut','Easn.cut','Esmi.cut','Esmi.cut','Eccr.cut','Eccr.cut','Emva.cut','Emva.cut','Esynsp.cut','Esynsp.cut','Espn.cut','Espn.cut','Etobcp.cut','Etobcp.cut','Ebja.cut','Ebja.cut','Ephv.cut','Ephv.cut','Echi.cut','Echi.cut','Efish.cut','Efish.cut','Epombecai.cut','Epombecai.cut','Eanasp.cut','Eanasp.cut','Eyen.cut','Eyen.cut','Ewht.cut','Ewht.cut','Ehum.cut','Ehum.cut','Etcr.cut','Etcr.cut','Emzecp.cut','Emzecp.cut','Esli.cut','Esli.cut','Ezebrafish.cut','Ezebrafish.cut','Emouse.cut','Emouse.cut','Esoy.cut','Esoy.cut','Eham.cut','Eham.cut','Esyhsp.cut','Esyhsp.cut','Eddi.cut','Eddi.cut','Emaize.cut','Emaize.cut','Emixlg.cut','Emixlg.cut','Eric.cut','Eric.cut','Esta.cut','Esta.cut','Eani.cut','Eani.cut','Epolyomaa2.cut','Epolyomaa2.cut','Ecac.cut','Ecac.cut','Eani_h.cut','Eani_h.cut','Echisp.cut','Echisp.cut','Ehha.cut','Ehha.cut','Ecel.cut','Ecel.cut','Encr.cut','Encr.cut','Epae.cut','Epae.cut','Eslm.cut','Eslm.cut','Ebsu_h.cut','Ebsu_h.cut','Eysp.cut','Eysp.cut','Echos.cut','Echos.cut','Etbr.cut','Etbr.cut','Edrosophila.cut','Edrosophila.cut','Erca.cut','Erca.cut','Ebov.cut','Ebov.cut','Eyeast.cut','Eyeast.cut','Emta.cut','Emta.cut','Epombe.cut','Epombe.cut','Esmu.cut','Esmu.cut','Etrb.cut','Etrb.cut','Ebst.cut','Ebst.cut','Erme.cut','Erme.cut','Eath.cut','Eath.cut','Efmdvpolyp.cut','Efmdvpolyp.cut','Ectr.cut','Ectr.cut','Emam_h.cut','Emam_h.cut','Eadenovirus7.cut','Eadenovirus7.cut','Ecpx.cut','Ecpx.cut','Eshpsp.cut','Eshpsp.cut','Espo.cut','Espo.cut','Emsa.cut','Emsa.cut','Eecoli.cut','Eecoli.cut','Edro.cut','Edro.cut','Ebly.cut','Ebly.cut','Eavi.cut','Eavi.cut','Epse.cut','Epse.cut','Epvu.cut','Epvu.cut','Eeco_h.cut','Eeco_h.cut','Erle.cut','Erle.cut','Ella.cut','Ella.cut','Edayhoff.cut','Edayhoff.cut','Eshp.cut','Eshp.cut','Emse.cut','Emse.cut','Ezma.cut','Ezma.cut','Eddi_h.cut','Eddi_h.cut','Esau.cut','Esau.cut','Echzm.cut','Echzm.cut','Edog.cut','Edog.cut','Ecrisp.cut','Ecrisp.cut','Eeco.cut','Eeco.cut',],
	"output" => ['outfile',],
    };

    $self->{FLIST}  = {

    };

    $self->{SEPARATOR}  = {

    };

    $self->{VDEF}  = {
	"cfile" => 'Eyeastcai.cut',
	"outfile" => 'outfile.out',

    };

    $self->{PRECOND}  = {
	"init" => { "perl" => '1' },
	"input" => { "perl" => '1' },
	"seqall" => { "perl" => '1' },
	"required" => { "perl" => '1' },
	"cfile" => { "perl" => '1' },
	"output" => { "perl" => '1' },
	"outfile" => { "perl" => '1' },
	"auto" => { "perl" => '1' },

    };

    $self->{CTRL}  = {

    };

    $self->{PIPEOUT}  = {

    };

    $self->{WITHPIPEOUT}  = {

    };

    $self->{PIPEIN}  = {
	"seqall" => {
		 "seqsfile" => '1',
	},

    };

    $self->{WITHPIPEIN}  = {

    };

    $self->{ISCLEAN}  = {
	"init" => 0,
	"input" => 0,
	"seqall" => 0,
	"required" => 0,
	"cfile" => 0,
	"output" => 0,
	"outfile" => 0,
	"auto" => 0,

    };

    $self->{ISSIMPLE}  = {
	"init" => 0,
	"input" => 0,
	"seqall" => 1,
	"required" => 0,
	"cfile" => 1,
	"output" => 0,
	"outfile" => 1,
	"auto" => 0,

    };

    $self->{PARAMFILE}  = {

    };

    $self->{COMMENT}  = {

    };

    $self->{SCALEMIN}  = {

    };

    $self->{SCALEMAX}  = {

    };

    $self->{SCALEINC}  = {

    };

    $self->{INFO}  = {

    };

# -- end of definitions extracted from /local/gensoft/lib/Pise/5.a/PerlDef/cai.pm



    $self->_init_params(@params);

    return $self;
}



1; # Needed to keep compiler happy
