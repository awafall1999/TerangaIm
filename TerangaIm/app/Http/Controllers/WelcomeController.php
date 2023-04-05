<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\EtatAnnonce;
use App\Models\Nationalite;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
        // 📂📂 Persistance dans la table roles
        if(Role::all()->count() == 0)
        {
            $tabRoles = ["SUPER ADMIN", "ADMIN", "CLIENT"];
            foreach($tabRoles as $role)
            {
                Role::create(["nom" => $role]);
            }
        }

        // 📂📂 Persistance dans la table etatannonces
        if(EtatAnnonce::all()->count() == 0)
        {
            $tabEtatAnnonces = ["Publier", "Non publier", "Bloquer", "Désactiver"];
            foreach($tabEtatAnnonces as $etatAnnonce)
            {
            EtatAnnonce::create(["nom" => $etatAnnonce]);
            }
        }

        // 📂📂 Persistance dans la table nationalites
        if(Nationalite::all()->count() == 0)
        {
            $tabNationalites = [
                "Afghane (Afghanistan)"
                ,"Albanaise (Albanie)"
                ,"Algérienne (Algérie)"
                ,"Allemande (Allemagne)"
                ,"Americaine (États-Unis)"
                ,"Andorrane (Andorre)"
                ,"Angolaise (Angola)"
                ,"Antiguaise-et-Barbudienne (Antigua-et-Barbuda)"
                ,"Argentine (Argentine)"
                ,"Armenienne (Arménie)"
                ,"Australienne (Australie)"
                ,"Autrichienne (Autriche)"
                ,"Azerbaïdjanaise (Azerbaïdjan)"
                ,"Bahamienne (Bahamas)"
                ,"Bahreinienne (Bahreïn)"
                ,"Bangladaise (Bangladesh)"
                ,"Barbadienne (Barbade)"
                ,"Belge (Belgique)"
                ,"Belizienne (Belize)"
                ,"Béninoise (Bénin)"
                ,"Bhoutanaise (Bhoutan)"
                ,"Biélorusse (Biélorussie)"
                ,"Birmane (Birmanie)"
                ,"Bissau-Guinéenne (Guinée-Bissau)"
                ,"Bolivienne (Bolivie)"
                ,"Bosnienne (Bosnie-Herzégovine)"
                ,"Botswanaise (Botswana)"
                ,"Brésilienne (Brésil)"
                ,"Britannique (Royaume-Uni)"
                ,"Brunéienne (Brunéi)"
                ,"Bulgare (Bulgarie)"
                ,"Burkinabée (Burkina)"
                ,"Burundaise (Burundi)"
                ,"Cambodgienne (Cambodge)"
                ,"Camerounaise (Cameroun)"
                ,"Canadienne (Canada)"
                ,"Cap-verdienne (Cap-Vert)"
                ,"Centrafricaine (Centrafrique)"
                ,"Chilienne (Chili)"
                ,"Chinoise (Chine)"
                ,"Chypriote (Chypre)"
                ,"Colombienne (Colombie)"
                ,"Comorienne (Comores)"
                ,"Congolaise (Congo-Brazzaville)"
                ,"Congolaise (Congo-Kinshasa)"
                ,"Cookienne (Îles Cook)"
                ,"Costaricaine (Costa Rica)"
                ,"Croate (Croatie)"
                ,"Cubaine (Cuba)"
                ,"Danoise (Danemark)"
                ,"Djiboutienne (Djibouti)"
                ,"Dominicaine (République dominicaine)"
                ,"Dominiquaise (Dominique)"
                ,"Égyptienne (Égypte)"
                ,"Émirienne (Émirats arabes unis)"
                ,"Équato-guineenne (Guinée équatoriale)"
                ,"Équatorienne (Équateur)"
                ,"Érythréenne (Érythrée)"
                ,"Espagnole (Espagne)"
                ,"Est-timoraise (Timor-Leste)"
                ,"Estonienne (Estonie)"
                ,"Éthiopienne (Éthiopie)"
                ,"Fidjienne (Fidji)"
                ,"Finlandaise (Finlande)"
                ,"Française (France)"
                ,"Gabonaise (Gabon)"
                ,"Gambienne (Gambie)"
                ,"Georgienne (Géorgie)"
                ,"Ghanéenne (Ghana)"
                ,"Grenadienne (Grenade)"
                ,"Guatémaltèque (Guatemala)"
                ,"Guinéenne (Guinée)"
                ,"Guyanienne (Guyana)"
                ,"Haïtienne (Haïti)"
                ,"Hellénique (Grèce)"
                ,"Hondurienne (Honduras)"
                ,"Hongroise (Hongrie)"
                ,"Indienne (Inde)"
                ,"Indonésienne (Indonésie)"
                ,"Irakienne (Iraq)"
                ,"Iranienne (Iran)"
                ,"Irlandaise (Irlande)"
                ,"Islandaise (Islande)"
                ,"Israélienne (Israël)"
                ,"Italienne (Italie)"
                ,"Ivoirienne (Côte d'Ivoire)"
                ,"Jamaïcaine (Jamaïque)"
                ,"Japonaise (Japon)"
                ,"Jordanienne (Jordanie)"
                ,"Kazakhstanaise (Kazakhstan)"
                ,"Kenyane (Kenya)"
                ,"Kirghize (Kirghizistan)"
                ,"Kiribatienne (Kiribati)"
                ,"Kittitienne et Névicienne (Saint-Christophe-et-Niévès)"
                ,"Koweïtienne (Koweït)"
                ,"Laotienne (Laos)"
                ,"Lesothane (Lesotho)"
                ,"Lettone (Lettonie)"
                ,"Libanaise (Liban)"
                ,"Libérienne (Libéria)"
                ,"Libyenne (Libye)"
                ,"Liechtensteinoise (Liechtenstein)"
                ,"Lituanienne (Lituanie)"
                ,"Luxembourgeoise (Luxembourg)"
                ,"Macédonienne (Macédoine)"
                ,"Malaisienne (Malaisie)"
                ,"Malawienne (Malawi)"
                ,"Maldivienne (Maldives)"
                ,"Malgache (Madagascar)"
                ,"Maliennes (Mali)"
                ,"Maltaise (Malte)"
                ,"Marocaine (Maroc)"
                ,"Marshallaise (Îles Marshall)"
                ,"Mauricienne (Maurice)"
                ,"Mauritanienne (Mauritanie)"
                ,"Mexicaine (Mexique)"
                ,"Micronésienne (Micronésie)"
                ,"Moldave (Moldovie)"
                ,"Monegasque (Monaco)"
                ,"Mongole (Mongolie)"
                ,"Monténégrine (Monténégro)"
                ,"Mozambicaine (Mozambique)"
                ,"Namibienne (Namibie)"
                ,"Nauruane (Nauru)"
                ,"Néerlandaise (Pays-Bas)"
                ,"Néo-Zélandaise (Nouvelle-Zélande)"
                ,"Népalaise (Népal)"
                ,"Nicaraguayenne (Nicaragua)"
                ,"Nigériane (Nigéria)"
                ,"Nigérienne (Niger)"
                ,"Niuéenne (Niue)"
                ,"Nord-coréenne (Corée du Nord)"
                ,"Norvégienne (Norvège)"
                ,"Omanaise (Oman)"
                ,"Ougandaise (Ouganda)"
                ,"Ouzbéke (Ouzbékistan)"
                ,"Pakistanaise (Pakistan)"
                ,"Palaosienne (Palaos)"
                ,"Palestinienne (Palestine)"
                ,"Panaméenne (Panama)"
                ,"Papouane-Néo-Guinéenne (Papouasie-Nouvelle-Guinée)"
                ,"Paraguayenne (Paraguay)"
                ,"Péruvienne (Pérou)"
                ,"Philippine (Philippines)"
                ,"Polonaise (Pologne)"
                ,"Portugaise (Portugal)"
                ,"Qatarienne (Qatar)"
                ,"Roumaine (Roumanie)"
                ,"Russe (Russie)"
                ,"Rwandaise (Rwanda)"
                ,"Saint-Lucienne (Sainte-Lucie)"
                ,"Saint-Marinaise (Saint-Marin)"
                ,"Saint-Vincentaise et Grenadine (Saint-Vincent-et-les Grenadines)"
                ,"Salomonaise (Îles Salomon)"
                ,"Salvadorienne (Salvador)"
                ,"Samoane (Samoa)"
                ,"Santoméenne (Sao Tomé-et-Principe)"
                ,"Saoudienne (Arabie saoudite)"
                ,"Sénégalaise (Sénégal)"
                ,"Serbe (Serbie)"
                ,"Seychelloise (Seychelles)"
                ,"Sierra-Léonaise (Sierra Leone)"
                ,"Singapourienne (Singapour)"
                ,"Slovaque (Slovaquie)"
                ,"Slovène (Slovénie)"
                ,"Somalienne (Somalie)"
                ,"Soudanaise (Soudan)"
                ,"Sri-Lankaise (Sri Lanka)"
                ,"Sud-Africaine (Afrique du Sud)"
                ,"Sud-Coréenne (Corée du Sud)"
                ,"Sud-Soudanaise (Soudan du Sud)"
                ,"Suédoise (Suède)"
                ,"Suisse (Suisse)"
                ,"Surinamaise (Suriname)"
                ,"Swazie (Swaziland)"
                ,"Syrienne (Syrie)"
                ,"Tadjike (Tadjikistan)"
                ,"Tanzanienne (Tanzanie)"
                ,"Tchadienne (Tchad)"
                ,"Tchèque (Tchéquie)"
                ,"Thaïlandaise (Thaïlande)"
                ,"Togolaise (Togo)"
                ,"Tonguienne (Tonga)"
                ,"Trinidadienne (Trinité-et-Tobago)"
                ,"Tunisienne (Tunisie)"
                ,"Turkmène (Turkménistan)"
                ,"Turque (Turquie)"
                ,"Tuvaluane (Tuvalu)"
                ,"Ukrainienne (Ukraine)"
                ,"Uruguayenne (Uruguay)"
                ,"Vanuatuane (Vanuatu)"
                ,"Vaticane (Vatican)"
                ,"Vénézuélienne (Venezuela)"
                ,"Vietnamienne (Viêt Nam)"
                ,"Yéménite (Yémen)"
                ,"Zambienne (Zambie)"
                ,"Zimbabwéenne (Zimbabwe)"
            ];
            foreach($tabNationalites as $nationalite)
            {
                Nationalite::create([
                    'nom' => $nationalite
                ]);
            }
        }

        return view("base");
    }
}
