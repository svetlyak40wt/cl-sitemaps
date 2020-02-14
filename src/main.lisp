(defpackage cl-sitemaps
  (:use :cl 
        :cxml))
(in-package :cl-sitemaps)

(defparameter *rt-sitemap* 
  (cxml:make-source 
   "<?xml version=\"1.0\" encoding=\"utf-8\"?>
<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\" xmlns:news=\"http://www.google.com/schemas/sitemap-news/0.9\">
    
    <url>
        <loc>https://www.rt.com/usa/480790-us-navy-seizes-weapons-iran/</loc>
        <lastmod>2020-02-13T19:23:09+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T19:21:00+00:00</news:publication_date>
          <news:title><![CDATA[US Navy seizes cache of ‘Iranian manufactured’ weapons in Arabian Sea – Pentagon (PHOTO)]]></news:title>
          <news:keywords><![CDATA[us, navy, seizes, cache, of, iranian, manufactured, weapons, in, arabian, sea, pentagon, photo]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480788-nfl-ohio-marijuana-legalization/</loc>
        <lastmod>2020-02-13T19:15:21+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T19:15:21+00:00</news:publication_date>
          <news:title><![CDATA['Next year!' Pain of watching sport cannot be eased by marijuana, medical board rules – but NFL fan plans to petition again]]></news:title>
          <news:keywords><![CDATA[next, year, pain, of, watching, sport, cannot, be, eased, by, marijuana, medical, board, rules, but, nfl, fan, plans, to, petition, again]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480789-attack-kirkuk-base-iraq-us-troops/</loc>
        <lastmod>2020-02-13T19:24:07+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T19:06:00+00:00</news:publication_date>
          <news:title><![CDATA[Two rockets strike K-1 base hosting US troops in Kirkuk, Iraq]]></news:title>
          <news:keywords><![CDATA[two, rockets, strike, k, 1, base, hosting, us, troops, in, kirkuk, iraq]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480787-syria-turkey-armenian-genocide/</loc>
        <lastmod>2020-02-13T18:54:01+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T18:54:01+00:00</news:publication_date>
          <news:title><![CDATA[Syria officially recognizes Turkish genocide of Armenians, amid tensions over Ankara’s invasion of Idlib]]></news:title>
          <news:keywords><![CDATA[syria, officially, recognizes, turkish, genocide, of, armenians, amid, tensions, over, ankaras, invasion, of, idlib]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480784-extinct-human-dna-found-africa/</loc>
        <lastmod>2020-02-13T18:51:59+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T18:51:59+00:00</news:publication_date>
          <news:title><![CDATA[Ghost in the shell: Never-before-seen extinct species of human found lurking in genes of today's West Africans – study]]></news:title>
          <news:keywords><![CDATA[ghost, in, shell, never, before, seen, extinct, species, of, human, found, lurking, in, genes, of, todays, west, africans, study]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480785-russian-synchronized-swimmer-underwater/</loc>
        <lastmod>2020-02-13T18:31:45+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T18:31:45+00:00</news:publication_date>
          <news:title><![CDATA[‘Snake ecstasy’: Russian synchronized swimming champion charms fans with underwater routine (VIDEO)]]></news:title>
          <news:keywords><![CDATA[snake, ecstasy, russian, synchronized, swimming, champion, charms, fans, with, underwater, routine, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480773-prager-u-samantha-bee-streisand/</loc>
        <lastmod>2020-02-13T18:06:36+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T18:06:36+00:00</news:publication_date>
          <news:title><![CDATA['Actually dangerous’: Samantha Bee’s denunciation of PragerU shows liberals still don’t get the allure of the forbidden]]></news:title>
          <news:keywords><![CDATA[actually, dangerous, samantha, bees, denunciation, of, prageru, shows, liberals, still, dont, get, allure, of, forbidden]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480778-guaido-uncle-arrested-explosives-media/</loc>
        <lastmod>2020-02-13T17:46:28+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:46:28+00:00</news:publication_date>
          <news:title><![CDATA[MSM brushes off arrest of Guaido's uncle for smuggling EXPLOSIVES as attempted ‘intimidation’ of failed coup leader]]></news:title>
          <news:keywords><![CDATA[msm, brushes, off, arrest, of, guaidos, uncle, for, smuggling, explosives, as, attempted, intimidation, of, failed, coup, leader]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480776-mother-father-russia-putin-president/</loc>
        <lastmod>2020-02-13T17:43:55+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:43:55+00:00</news:publication_date>
          <news:title><![CDATA[‘As long as I’m president we will have ‘mother’ & ‘father’: Putin backs traditional family values once again]]></news:title>
          <news:keywords><![CDATA[as, long, as, im, president, we, will, have, mother, father, putin, backs, traditional, family, values, once, again]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480781-australian-cricket-male-player-height/</loc>
        <lastmod>2020-02-13T17:41:56+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:41:56+00:00</news:publication_date>
          <news:title><![CDATA[At the HEIGHT of a scandal: Australian newspaper in hot water for making cricketer appear taller than female counterpart]]></news:title>
          <news:keywords><![CDATA[at, height, of, scandal, australian, newspaper, in, hot, water, for, making, cricketer, appear, taller, than, female, counterpart]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480780-irish-mep-guaido-gobshite/</loc>
        <lastmod>2020-02-13T17:21:29+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:21:29+00:00</news:publication_date>
          <news:title><![CDATA[Irish MEP calls Venezuela’s Juan Guaido a ‘gobshite’ in EU parliament, gets swiftly reprimanded (VIDEO)]]></news:title>
          <news:keywords><![CDATA[irish, mep, calls, venezuelas, juan, guaido, gobshite, in, eu, parliament, gets, swiftly, reprimanded, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480779-nemtsov-murderer-photo-prison-feast/</loc>
        <lastmod>2020-02-13T17:15:29+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:15:29+00:00</news:publication_date>
          <news:title><![CDATA[Russian authorities investigate after photos emerge of Boris Nemtsov murderer allegedly enjoying prison ‘feast’]]></news:title>
          <news:keywords><![CDATA[russian, authorities, investigate, after, photos, emerge, of, boris, nemtsov, murderer, allegedly, enjoying, prison, feast]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480777-pompeo-blasts-unhrc-list/</loc>
        <lastmod>2020-02-13T18:23:59+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:11:00+00:00</news:publication_date>
          <news:title><![CDATA[Pompeo rejects UNHRC list of companies operating in occupied Palestine, accuses UN of ‘unrelenting anti-Israel bias’]]></news:title>
          <news:keywords><![CDATA[pompeo, rejects, unhrc, list, of, companies, operating, in, occupied, palestine, accuses, un, of, unrelenting, anti, israel, bias]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480772-boris-cabinet-reshuffle-twitter/</loc>
        <lastmod>2020-02-13T17:19:30+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T17:05:40+00:00</news:publication_date>
          <news:title><![CDATA[‘Cummings has retained his position as PM’: BoJo sidelined by Twitter over ‘reshuffle’ as chief adviser hailed for changes]]></news:title>
          <news:keywords><![CDATA[cummings, has, retained, his, position, as, pm, bojo, sidelined, by, twitter, over, reshuffle, as, chief, adviser, hailed, for, changes]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480774-germany-defense-britain-security/</loc>
        <lastmod>2020-02-13T19:05:44+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T16:45:00+00:00</news:publication_date>
          <news:title><![CDATA[Germany’s defense minister wants to keep UK in ‘E3 group’ after Brexit, retain security ties]]></news:title>
          <news:keywords><![CDATA[germanys, defense, minister, wants, to, keep, uk, in, e3, group, after, brexit, retain, security, ties]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480771-nanosensor-detect-cancer-drop-blood/</loc>
        <lastmod>2020-02-13T15:56:13+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T15:56:13+00:00</news:publication_date>
          <news:title><![CDATA[New nanosensor can detect cancer from a SINGLE DROP of blood]]></news:title>
          <news:keywords><![CDATA[new, nanosensor, can, detect, cancer, from, single, drop, of, blood]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480739-ireland-fianna-sinn-fein/</loc>
        <lastmod>2020-02-13T18:01:31+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T15:52:00+00:00</news:publication_date>
          <news:title><![CDATA[Ireland’s Fianna Fail to seek to form govt without Sinn Fein – report]]></news:title>
          <news:keywords><![CDATA[irelands, fianna, fail, to, seek, to, form, govt, without, sinn, fein, report]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480766-russia-coronavirus-shortage-sex-toys/</loc>
        <lastmod>2020-02-13T15:07:05+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T15:03:00+00:00</news:publication_date>
          <news:title><![CDATA[Not a tease: Russia faces sex-toy shortage if coronavirus continues to spread]]></news:title>
          <news:keywords><![CDATA[not, tease, russia, faces, sex, toy, shortage, if, coronavirus, continues, to, spread]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480769-putin-constitution-national-vote/</loc>
        <lastmod>2020-02-13T14:50:48+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:50:48+00:00</news:publication_date>
          <news:title><![CDATA[Amending constitution is up to Russian people, we’ll do what they vote for – Putin]]></news:title>
          <news:keywords><![CDATA[amending, constitution, is, up, to, russian, people, well, do, what, they, vote, for, putin]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480770-us-taliban-violence-pentagon/</loc>
        <lastmod>2020-02-13T15:23:08+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:48:00+00:00</news:publication_date>
          <news:title><![CDATA[US & Taliban negotiated proposal for 7-day reduction in violence, Pentagon chief Esper says]]></news:title>
          <news:keywords><![CDATA[us, taliban, negotiated, proposal, for, 7, day, reduction, in, violence, pentagon, chief, esper, says]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480756-netanyahu-promoting-us-laws/</loc>
        <lastmod>2020-02-13T14:44:58+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:44:58+00:00</news:publication_date>
          <news:title><![CDATA[Okay if Israel does it? Twitter cries 'foreign meddling' after Netanyahu says Tel Aviv 'promoted' anti-boycott laws in US]]></news:title>
          <news:keywords><![CDATA[okay, if, israel, does, it, twitter, cries, foreign, meddling, after, netanyahu, says, tel, aviv, promoted, anti, boycott, laws, in, us]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480760-facebook-twitter-moscow-court-fine/</loc>
        <lastmod>2020-02-13T14:23:13+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:21:00+00:00</news:publication_date>
          <news:title><![CDATA[Sad face emoji? US social media giants Facebook & Twitter fined by Moscow court as server location impasse intensifies]]></news:title>
          <news:keywords><![CDATA[sad, face, emoji, us, social, media, giants, facebook, twitter, fined, by, moscow, court, as, server, location, impasse, intensifies]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480676-kalashnikov-ppsh-stress-test/</loc>
        <lastmod>2020-02-13T14:15:08+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:15:08+00:00</news:publication_date>
          <news:title><![CDATA[INDESTRUCTIBLE: Kalashnikov expert tries & FAILS to destroy iconic WWII PPSh-41 submachine gun (VIDEO)]]></news:title>
          <news:keywords><![CDATA[indestructible, kalashnikov, expert, tries, fails, to, destroy, iconic, wwii, ppsh, 41, submachine, gun, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480747-barclays-link-jeffrey-epstein/</loc>
        <lastmod>2020-02-13T14:19:40+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:13:00+00:00</news:publication_date>
          <news:title><![CDATA[Barclays boss Jes Staley probed over ties with Jeffrey Epstein]]></news:title>
          <news:keywords><![CDATA[barclays, boss, jes, staley, probed, over, ties, with, jeffrey, epstein]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480757-shale-industry-financial-trouble/</loc>
        <lastmod>2020-02-13T15:31:35+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T14:06:46+00:00</news:publication_date>
          <news:title><![CDATA[Shale gas drillers are facing a perfect storm]]></news:title>
          <news:keywords><![CDATA[shale, gas, drillers, are, facing, perfect, storm]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480740-big-ben-clock-costs/</loc>
        <lastmod>2020-02-13T13:46:32+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T13:46:32+00:00</news:publication_date>
          <news:title><![CDATA[‘They forgot about the clock expert?’ Excuses for spiraling Big Ben costs provokes bemusement and anger online]]></news:title>
          <news:keywords><![CDATA[they, forgot, about, clock, expert, excuses, for, spiraling, big, ben, costs, provokes, bemusement, and, anger, online]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480768-greek-islands-migrant-protest/</loc>
        <lastmod>2020-02-13T14:49:35+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T13:32:00+00:00</news:publication_date>
          <news:title><![CDATA[Residents from Greek islands protest in Athens against building new migrant camps]]></news:title>
          <news:keywords><![CDATA[residents, from, greek, islands, protest, in, athens, against, building, new, migrant, camps]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480754-sas-scandanavian-ad-returns-russia/</loc>
        <lastmod>2020-02-13T15:30:46+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T13:25:00+00:00</news:publication_date>
          <news:title><![CDATA[Phew! ‘Nothing is Scandinavian’ ad republished as airline SAS is told its critics are actually Putin’s trolls & ‘useful idiots’]]></news:title>
          <news:keywords><![CDATA[phew, nothing, is, scandinavian, ad, republished, as, airline, sas, is, told, its, critics, are, actually, putins, trolls, useful, idiots]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480755-evgenia-medvedeva-sailor-moon/</loc>
        <lastmod>2020-02-13T13:10:46+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T13:10:46+00:00</news:publication_date>
          <news:title><![CDATA[‘I would love to combine figure skating & anime’: Evgenia Medvedeva to portray Sailor Moon in Japanese ice show]]></news:title>
          <news:keywords><![CDATA[i, would, love, to, combine, figure, skating, anime, evgenia, medvedeva, to, portray, sailor, moon, in, japanese, ice, show]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480751-darren-till-donald-trump/</loc>
        <lastmod>2020-02-13T16:41:25+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:45:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Surely you can pull some strings!’ Darren Till pleads with US President Donald Trump to seal his visa for UFC 248]]></news:title>
          <news:keywords><![CDATA[surely, you, can, pull, some, strings, darren, till, pleads, with, us, president, donald, trump, to, seal, his, visa, for, ufc, 248]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480753-hong-kong-sevens-postponed-coronavirus/</loc>
        <lastmod>2020-02-13T12:40:35+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:40:35+00:00</news:publication_date>
          <news:title><![CDATA[Try again: Hong Kong Rugby Sevens rescheduled as coronavirus claims another early-2020 sporting event]]></news:title>
          <news:keywords><![CDATA[try, again, hong, kong, rugby, sevens, rescheduled, as, coronavirus, claims, another, early, 2020, sporting, event]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480752-japan-confirms-first-coronavirus/</loc>
        <lastmod>2020-02-13T14:19:54+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:37:00+00:00</news:publication_date>
          <news:title><![CDATA[Japanese Health Ministry confirms first coronavirus death]]></news:title>
          <news:keywords><![CDATA[japanese, health, ministry, confirms, first, coronavirus, death]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480744-indonesian-volcano-merapi-spews-ash/</loc>
        <lastmod>2020-02-13T13:16:48+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:24:16+00:00</news:publication_date>
          <news:title><![CDATA[WATCH: Indonesian volcano spews ash 2,000 meters into the air in new eruption]]></news:title>
          <news:keywords><![CDATA[watch, indonesian, volcano, spews, ash, 2000, meters, into, air, in, new, eruption]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480742-soviet-spy-saved-krakow/</loc>
        <lastmod>2020-02-13T12:36:57+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:19:00+00:00</news:publication_date>
          <news:title><![CDATA[Legendary Soviet spy who saved Krakow from Nazi-made flood dies days after turning 103]]></news:title>
          <news:keywords><![CDATA[legendary, soviet, spy, who, saved, krakow, from, nazi, made, flood, dies, days, after, turning, 103]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480741-cap-controversy-san-diego-padres-swastika/</loc>
        <lastmod>2020-02-13T12:54:30+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:04:00+00:00</news:publication_date>
          <news:title><![CDATA['Our logo has a SWASTIKA in the middle?': San Diego Padres won't wear new cap as fans say logo resembles Nazi symbol]]></news:title>
          <news:keywords><![CDATA[our, logo, has, swastika, in, middle, san, diego, padres, wont, wear, new, cap, as, fans, say, logo, resembles, nazi, symbol]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480749-dutch-police-suspect-letter-bomb/</loc>
        <lastmod>2020-02-13T12:39:47+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T12:02:00+00:00</news:publication_date>
          <news:title><![CDATA[Letter bomb catches fire at ING Bank office in Amsterdam, one person suffers smoke inhalation]]></news:title>
          <news:keywords><![CDATA[letter, bomb, catches, fire, at, ing, bank, office, in, amsterdam, one, person, suffers, smoke, inhalation]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480746-korean-skater-you-young-quad-loop/</loc>
        <lastmod>2020-02-13T12:00:38+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T11:59:00+00:00</news:publication_date>
          <news:title><![CDATA[New rival to Tutberidze’s girls? South Korean female skater lands never seen before quad (VIDEO)]]></news:title>
          <news:keywords><![CDATA[new, rival, to, tutberidzes, girls, south, korean, female, skater, lands, never, seen, before, quad, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480748-sajid-javid-uk-chancellor-quits/</loc>
        <lastmod>2020-02-13T12:58:59+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T11:58:00+00:00</news:publication_date>
          <news:title><![CDATA[UK Chancellor Sajid Javid quits as Boris Johnson reshuffles cabinet]]></news:title>
          <news:keywords><![CDATA[uk, chancellor, sajid, javid, quits, as, boris, johnson, reshuffles, cabinet]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480738-oil-demand-drops-coronavirus/</loc>
        <lastmod>2020-02-13T11:26:33+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T11:26:33+00:00</news:publication_date>
          <news:title><![CDATA[Global oil demand to face 1st quarterly drop in more than a decade – IEA]]></news:title>
          <news:keywords><![CDATA[global, oil, demand, to, face, 1st, quarterly, drop, in, more, than, decade, iea]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480745-boris-johnson-cabinet-reshuffle-sackings/</loc>
        <lastmod>2020-02-13T16:09:55+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T11:25:00+00:00</news:publication_date>
          <news:title><![CDATA[BoJo wields the axe as Northern Ireland & environment ministers become notable victims in cabinet reshuffle]]></news:title>
          <news:keywords><![CDATA[bojo, wields, axe, as, northern, ireland, environment, ministers, become, notable, victims, in, cabinet, reshuffle]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480743-odion-ighalo-coronavirus-united/</loc>
        <lastmod>2020-02-13T11:16:16+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T11:16:16+00:00</news:publication_date>
          <news:title><![CDATA[‘We don’t want to take that risk’: Manchester United keep new striker Odion Ighalo away from club training ground over coronavirus]]></news:title>
          <news:keywords><![CDATA[we, dont, want, to, take, that, risk, manchester, united, keep, new, striker, odion, ighalo, away, from, club, training, ground, over, coronavirus]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480733-emotet-trojan-virus-spreads-wifi/</loc>
        <lastmod>2020-02-13T11:53:24+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T11:06:42+00:00</news:publication_date>
          <news:title><![CDATA[Emotet trojan spreads via Wi-Fi, capitalizes on coronavirus fears; here’s how to protect yourself]]></news:title>
          <news:keywords><![CDATA[emotet, trojan, spreads, via, wi, fi, capitalizes, on, coronavirus, fears, heres, how, to, protect, yourself]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480732-children-conflict-nations-un/</loc>
        <lastmod>2020-02-13T19:18:15+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T10:27:00+00:00</news:publication_date>
          <news:title><![CDATA[250mn children live in conflict-affected nations, UN chief Guterres says]]></news:title>
          <news:keywords><![CDATA[250mn, children, live, in, conflict, affected, nations, un, chief, guterres, says]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480737-pakistan-corporal-punishment-case/</loc>
        <lastmod>2020-02-13T11:53:47+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T09:29:33+00:00</news:publication_date>
          <news:title><![CDATA[Pakistani court suspends corporal punishment for children ‘in good faith for their benefit’]]></news:title>
          <news:keywords><![CDATA[pakistani, court, suspends, corporal, punishment, for, children, in, good, faith, for, their, benefit]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480734-us-philippines-security-terrorism/</loc>
        <lastmod>2020-02-13T19:23:37+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T09:16:00+00:00</news:publication_date>
          <news:title><![CDATA[Top US commander warns ending Philippines security pact could damage fight against terrorism]]></news:title>
          <news:keywords><![CDATA[top, us, commander, warns, ending, philippines, security, pact, could, damage, fight, against, terrorism]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480730-airbus-record-aircraft-delivery/</loc>
        <lastmod>2020-02-13T09:04:37+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T09:04:37+00:00</news:publication_date>
          <news:title><![CDATA[Airbus crushes Boeing with record jet deliveries]]></news:title>
          <news:keywords><![CDATA[airbus, crushes, boeing, with, record, jet, deliveries]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480731-un-road-map-libya/</loc>
        <lastmod>2020-02-13T12:03:22+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T07:59:00+00:00</news:publication_date>
          <news:title><![CDATA[UNSC endorses 55-point road map for Libya, Russia doubts it can be implemented]]></news:title>
          <news:keywords><![CDATA[unsc, endorses, 55, point, road, map, for, libya, russia, doubts, it, can, be, implemented]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480719-wuhan-military-medics-ousters/</loc>
        <lastmod>2020-02-13T09:33:15+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T07:19:58+00:00</news:publication_date>
          <news:title><![CDATA[China deploys 2,600 military medics to help fight coronavirus as Wuhan & Hubei party chiefs sacked]]></news:title>
          <news:keywords><![CDATA[china, deploys, 2600, military, medics, to, help, fight, coronavirus, as, wuhan, hubei, party, chiefs, sacked]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480677-siege-budapest-anniversary-documents/</loc>
        <lastmod>2020-02-13T08:25:58+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T07:13:00+00:00</news:publication_date>
          <news:title><![CDATA[Russia declassifies previously unseen papers and PHOTOS of pivotal 1945 recapture of 'fortress city' Budapest from Nazis]]></news:title>
          <news:keywords><![CDATA[russia, declassifies, previously, unseen, papers, and, photos, of, pivotal, 1945, recapture, of, fortress, city, budapest, from, nazis]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480718-india-executives-blackmail-grindr/</loc>
        <lastmod>2020-02-13T13:36:26+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T05:23:00+00:00</news:publication_date>
          <news:title><![CDATA[Scores of corporate executives, CEOs in India caught up in ‘honey trap’ blackmail operation on gay dating app]]></news:title>
          <news:keywords><![CDATA[scores, of, corporate, executives, ceos, in, india, caught, up, in, honey, trap, blackmail, operation, on, gay, dating, app]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480717-india-bus-truck-collision/</loc>
        <lastmod>2020-02-13T13:36:47+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T04:02:00+00:00</news:publication_date>
          <news:title><![CDATA[At least 14 killed, 35 injured as bus collides HEAD-ON with a truck in India’s Uttar Pradesh (GRAPHIC PHOTOS)]]></news:title>
          <news:keywords><![CDATA[at, least, 14, killed, 35, injured, as, bus, collides, head, on, with, truck, in, indias, uttar, pradesh, graphic, photos]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480715-india-rape-twitter-apology-fine/</loc>
        <lastmod>2020-02-13T13:37:05+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T03:43:00+00:00</news:publication_date>
          <news:title><![CDATA[‘What are you waiting for?' Indian court tells Twitter to apologize or face fine for identifying Hyderabad rape victim]]></news:title>
          <news:keywords><![CDATA[what, are, you, waiting, for, indian, court, tells, twitter, to, apologize, or, face, fine, for, identifying, hyderabad, rape, victim]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480716-greta-mural-scrapped-outcry/</loc>
        <lastmod>2020-02-13T13:42:53+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T02:19:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Worst idea ever!’ Plans for Greta mural on North Dakota bakery scrapped after community outcry & boycott threats on social media]]></news:title>
          <news:keywords><![CDATA[worst, idea, ever, plans, for, greta, mural, on, north, dakota, bakery, scrapped, after, community, outcry, boycott, threats, on, social, media]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480713-nato-expand-iraq-training/</loc>
        <lastmod>2020-02-13T13:37:21+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-13T00:59:00+00:00</news:publication_date>
          <news:title><![CDATA[We WILL protect you – or else: NATO members agree to expand Iraq mission, without regard for Baghdad’s permission]]></news:title>
          <news:keywords><![CDATA[we, will, protect, you, or, else, nato, members, agree, to, expand, iraq, mission, without, regard, for, baghdads, permission]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480707-us-convoy-civilians-killed-syria/</loc>
        <lastmod>2020-02-13T13:38:33+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T23:46:00+00:00</news:publication_date>
          <news:title><![CDATA[Young man killed in US-Syrian skirmish, further escalation stopped ‘only’ due to Russian mediation – Russian MOD]]></news:title>
          <news:keywords><![CDATA[young, man, killed, in, us, syrian, skirmish, further, escalation, stopped, only, due, to, russian, mediation, russian, mod]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480711-iowa-democratic-chair-resignation/</loc>
        <lastmod>2020-02-13T13:42:34+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T23:08:00+00:00</news:publication_date>
          <news:title><![CDATA[Iowa Democratic Party chair RESIGNS over caucus disaster]]></news:title>
          <news:keywords><![CDATA[iowa, democratic, party, chair, resigns, over, caucus, disaster]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480708-israel-drone-dome-laser-weapon/</loc>
        <lastmod>2020-02-13T13:38:55+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T21:58:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Drone dome’: Israel unveils LASER weapon blasting UAVs out of the sky (VIDEO)]]></news:title>
          <news:keywords><![CDATA[drone, dome, israel, unveils, laser, weapon, blasting, uavs, out, of, sky, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480706-salvini-italy-immunity-lifted-senate/</loc>
        <lastmod>2020-02-13T13:39:14+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T21:29:00+00:00</news:publication_date>
          <news:title><![CDATA[Defiant Salvini says opponents ‘will be defeated by history’ as Senate lifts his immunity in migrant ‘kidnapping’ case]]></news:title>
          <news:keywords><![CDATA[defiant, salvini, says, opponents, will, be, defeated, by, history, as, senate, lifts, his, immunity, in, migrant, kidnapping, case]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480705-san-francisco-healthiest-city-survey/</loc>
        <lastmod>2020-02-13T13:42:14+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T21:24:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Dirty streets and human waste?’ Twitter not buying survey claiming San Francisco is ‘healthiest’ US city]]></news:title>
          <news:keywords><![CDATA[dirty, streets, and, human, waste, twitter, not, buying, survey, claiming, san, francisco, is, healthiest, us, city]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480702-trump-iran-war-senate/</loc>
        <lastmod>2020-02-13T13:41:57+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T20:48:00+00:00</news:publication_date>
          <news:title><![CDATA[What about stopping endless wars? Trump urges GOP to vote down Iran war resolution because it’s a partisan ploy by Democrats]]></news:title>
          <news:keywords><![CDATA[what, about, stopping, endless, wars, trump, urges, gop, to, vote, down, iran, war, resolution, because, its, partisan, ploy, by, democrats]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480694-hillary-failed-state-trump-intimidation/</loc>
        <lastmod>2020-02-13T13:41:39+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T19:01:00+00:00</news:publication_date>
          <news:title><![CDATA[Hillary eviscerated for likening Trump to ‘failed-state fascist’ in Roger Stone sentencing upset]]></news:title>
          <news:keywords><![CDATA[hillary, eviscerated, for, likening, trump, to, failed, state, fascist, in, roger, stone, sentencing, upset]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480699-facebook-dating-eu-privacy-concerns/</loc>
        <lastmod>2020-02-13T13:39:30+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T18:51:00+00:00</news:publication_date>
          <news:title><![CDATA[Not-so-happy Valentine’s Day for Facebook as Irish data watchdog scuppers EU rollout of dating feature over privacy concerns]]></news:title>
          <news:keywords><![CDATA[not, so, happy, valentines, day, for, facebook, as, irish, data, watchdog, scuppers, eu, rollout, of, dating, feature, over, privacy, concerns]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480691-bette-midler-gop-democrats-violence/</loc>
        <lastmod>2020-02-13T13:41:21+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T18:46:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Too polite’? Bette Midler says Dems must ‘toughen up’ in wake of car attack on GOP volunteers]]></news:title>
          <news:keywords><![CDATA[too, polite, bette, midler, says, dems, must, toughen, up, in, wake, of, car, attack, on, gop, volunteers]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480697-afd-merkel-court-abuse-office/</loc>
        <lastmod>2020-02-13T13:39:46+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T18:21:00+00:00</news:publication_date>
          <news:title><![CDATA[German AfD vows to take Merkel to COURT over ‘abuse of office’]]></news:title>
          <news:keywords><![CDATA[german, afd, vows, to, take, merkel, to, court, over, abuse, of, office]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480690-nfl-cleveland-browns-myles-garrett-browns-reinstated/</loc>
        <lastmod>2020-02-12T18:09:18+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T18:09:18+00:00</news:publication_date>
          <news:title><![CDATA[Back in Brown: Cleveland Browns star Myles Garrett reinstated to NFL following in-game helmet attack fracas]]></news:title>
          <news:keywords><![CDATA[back, in, brown, cleveland, browns, star, myles, garrett, reinstated, to, nfl, following, in, game, helmet, attack, fracas]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480692-us-military-convoy-syria/</loc>
        <lastmod>2020-02-13T13:39:59+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T17:54:00+00:00</news:publication_date>
          <news:title><![CDATA[WATCH: US military convoy met with HAIL OF BULLETS in north Syria… and Russian convoy intervenes to break up the fight]]></news:title>
          <news:keywords><![CDATA[watch, us, military, convoy, met, with, hail, of, bullets, in, north, syria, and, russian, convoy, intervenes, to, break, up, fight]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480693-australia-senator-bring-assange-home/</loc>
        <lastmod>2020-02-13T13:40:15+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T17:41:00+00:00</news:publication_date>
          <news:title><![CDATA[Australian senator calls on govt to bring Assange home as journalist faces ‘death’ if extradited to US]]></news:title>
          <news:keywords><![CDATA[australian, senator, calls, on, govt, to, bring, assange, home, as, journalist, faces, death, if, extradited, to, us]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480674-david-beckham-inter-miami-inter-milan-legal-battle/</loc>
        <lastmod>2020-02-12T17:26:01+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T17:26:01+00:00</news:publication_date>
          <news:title><![CDATA[The name game: David Beckham's Inter Miami could be forced into name change after legal wrangle with Inter Milan]]></news:title>
          <news:keywords><![CDATA[name, game, david, beckhams, inter, miami, could, be, forced, into, name, change, after, legal, wrangle, with, inter, milan]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480681-bbc-kids-tv-netflix/</loc>
        <lastmod>2020-02-13T13:40:42+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T16:57:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Cannibalism!’ Parents in meltdown after warnings Netflix-style BBC could mean ‘bye-bye’ for kids TV channel]]></news:title>
          <news:keywords><![CDATA[cannibalism, parents, in, meltdown, after, warnings, netflix, style, bbc, could, mean, bye, bye, for, kids, tv, channel]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480686-alex-botelho-surfer-left-unconscious-jetski-accident/</loc>
        <lastmod>2020-02-12T16:44:36+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T16:44:36+00:00</news:publication_date>
          <news:title><![CDATA[Alex Botelho: Surfer left unconscious after terrifying jet ski accident at big wave event (VIDEO)]]></news:title>
          <news:keywords><![CDATA[alex, botelho, surfer, left, unconscious, after, terrifying, jet, ski, accident, at, big, wave, event, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480684-formula-1-chinese-grand-prix-postponed-coronavirus/</loc>
        <lastmod>2020-02-12T16:44:16+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T16:44:16+00:00</news:publication_date>
          <news:title><![CDATA[Red flagged: Chinese Formula 1 Grand Prix officially postponed amid coronavirus fears]]></news:title>
          <news:keywords><![CDATA[red, flagged, chinese, formula, 1, grand, prix, officially, postponed, amid, coronavirus, fears]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480678-coronavirus-quarantine-hospital-escape/</loc>
        <lastmod>2020-02-12T16:32:16+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T16:32:16+00:00</news:publication_date>
          <news:title><![CDATA[Saint Petersburg officials looking for Russian 'Sarah Connor' who escaped from Coronavirus quarantine]]></news:title>
          <news:keywords><![CDATA[saint, petersburg, officials, looking, for, russian, sarah, connor, who, escaped, from, coronavirus, quarantine]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480683-eu-trade-talks-britain/</loc>
        <lastmod>2020-02-12T17:50:46+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T15:59:00+00:00</news:publication_date>
          <news:title><![CDATA[EU Parliament approves key stances to be taken by negotiator Barnier in talks with Britain]]></news:title>
          <news:keywords><![CDATA[eu, parliament, approves, key, stances, to, be, taken, by, negotiator, barnier, in, talks, with, britain]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480680-unhrc-releases-israeli-settlements-companies/</loc>
        <lastmod>2020-02-13T13:40:30+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T15:57:00+00:00</news:publication_date>
          <news:title><![CDATA[Israel lashes out at UNHRC after LIST of companies doing business in occupied Palestine is finally released]]></news:title>
          <news:keywords><![CDATA[israel, lashes, out, at, unhrc, after, list, of, companies, doing, business, in, occupied, palestine, is, finally, released]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480682-us-troops-convoy-blocked-syria/</loc>
        <lastmod>2020-02-13T13:40:45+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T15:52:00+00:00</news:publication_date>
          <news:title><![CDATA[Syrian civilian ‘killed’ by US troops after armored convoy blocked by protesters — state media]]></news:title>
          <news:keywords><![CDATA[syrian, civilian, killed, by, us, troops, after, armored, convoy, blocked, by, protesters, state, media]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480685-turkey-idlib-opposition-terrorists/</loc>
        <lastmod>2020-02-13T13:40:59+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T15:46:00+00:00</news:publication_date>
          <news:title><![CDATA[Turkey failed to separate ‘opposition’ from terrorists in Idlib, situation worsened by Ankara pumping arms into area — Moscow]]></news:title>
          <news:keywords><![CDATA[turkey, failed, to, separate, opposition, from, terrorists, in, idlib, situation, worsened, by, ankara, pumping, arms, into, area, moscow]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480679-tv-insult-six-year-jail/</loc>
        <lastmod>2020-02-12T15:59:50+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T15:15:00+00:00</news:publication_date>
          <news:title><![CDATA[Russian TV host could be jailed for up to six years after calling poor parents 'uneducated scum']]></news:title>
          <news:keywords><![CDATA[russian, tv, host, could, be, jailed, for, up, to, six, years, after, calling, poor, parents, uneducated, scum]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480669-russia-global-economic-growth/</loc>
        <lastmod>2020-02-12T14:57:24+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T14:57:24+00:00</news:publication_date>
          <news:title><![CDATA[Russia needs more investment to outpace global economic growth – Putin]]></news:title>
          <news:keywords><![CDATA[russia, needs, more, investment, to, outpace, global, economic, growth, putin]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480675-palestinians-un-israel-settlements/</loc>
        <lastmod>2020-02-12T15:29:41+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T14:51:00+00:00</news:publication_date>
          <news:title><![CDATA[Palestinians hail UN report on companies with ties to Israeli settlements in West Bank]]></news:title>
          <news:keywords><![CDATA[palestinians, hail, un, report, on, companies, with, ties, to, israeli, settlements, in, west, bank]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sponsored-content/480670-polytech-days-in-berlin/</loc>
        <lastmod>2020-02-12T14:36:06+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T14:21:00+00:00</news:publication_date>
          <news:title><![CDATA[‘Polytech Days in Berlin’: Why new digital technology is the backbone of industrial production and the global economy]]></news:title>
          <news:keywords><![CDATA[polytech, days, in, berlin, why, new, digital, technology, is, backbone, of, industrial, production, and, global, economy]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480668-diplomats-kashmir-india-clampdown/</loc>
        <lastmod>2020-02-12T18:20:19+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T13:25:00+00:00</news:publication_date>
          <news:title><![CDATA[European diplomats visit Kashmir to check India’s loosening of clampdown]]></news:title>
          <news:keywords><![CDATA[european, diplomats, visit, kashmir, to, check, indias, loosening, of, clampdown]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480652-kevin-de-bruyne-man-city-parasite-dinner-guest/</loc>
        <lastmod>2020-02-12T14:35:14+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T13:14:00+00:00</news:publication_date>
          <news:title><![CDATA['Kevin De Bruyne & paella': Oscar winner names Man City ace as dream dinner party guest]]></news:title>
          <news:keywords><![CDATA[kevin, de, bruyne, paella, oscar, winner, names, man, city, ace, as, dream, dinner, party, guest]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480654-achilles-heel-defence-all-viruses/</loc>
        <lastmod>2020-02-13T13:41:13+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T13:11:00+00:00</news:publication_date>
          <news:title><![CDATA[Achilles’ heel of ALL viruses? Scientists discover holy grail which could lead to UNIVERSAL vaccine]]></news:title>
          <news:keywords><![CDATA[achilles, heel, of, all, viruses, scientists, discover, holy, grail, which, could, lead, to, universal, vaccine]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480655-eu-russia-euro-settlements/</loc>
        <lastmod>2020-02-12T12:39:42+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T12:39:42+00:00</news:publication_date>
          <news:title><![CDATA[Russia & EU on path to cut out the dollar by boosting settlements in national currencies]]></news:title>
          <news:keywords><![CDATA[russia, eu, on, path, to, cut, out, dollar, by, boosting, settlements, in, national, currencies]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/russia/480666-russian-communists-god-constitution/</loc>
        <lastmod>2020-02-12T14:05:06+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T12:16:00+00:00</news:publication_date>
          <news:title><![CDATA[Lenin would be rolling in his grave, if he had one: Russian Communists back plan to put 'God' in constitution]]></news:title>
          <news:keywords><![CDATA[lenin, would, be, rolling, in, his, grave, if, he, had, one, russian, communists, back, plan, to, put, god, in, constitution]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/usa/480665-goldman-sachs-ceo-sanders-economy/</loc>
        <lastmod>2020-02-13T13:40:59+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T12:14:00+00:00</news:publication_date>
          <news:title><![CDATA[Former Goldman Sachs CEO says Sanders presidency would ‘ruin our economy,’ gets blasted on Twitter]]></news:title>
          <news:keywords><![CDATA[former, goldman, sachs, ceo, says, sanders, presidency, would, ruin, our, economy, gets, blasted, on, twitter]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480664-jay-bouwmeester-collapse-hockey-nhl/</loc>
        <lastmod>2020-02-12T14:39:20+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T12:12:00+00:00</news:publication_date>
          <news:title><![CDATA[Ice hockey star Jay Bouwmeester 'conscious and alert' after suffering cardiac issue during NHL fixture (VIDEO)]]></news:title>
          <news:keywords><![CDATA[ice, hockey, star, jay, bouwmeester, conscious, and, alert, after, suffering, cardiac, issue, during, nhl, fixture, video]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/newsline/480667-iran-us-satellite-military/</loc>
        <lastmod>2020-02-12T14:57:37+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T12:10:00+00:00</news:publication_date>
          <news:title><![CDATA[Tehran rejects US allegations that its satellite program has ‘military dimension’]]></news:title>
          <news:keywords><![CDATA[tehran, rejects, us, allegations, that, its, satellite, program, has, military, dimension]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480656-church-institutionally-racist-archbishop/</loc>
        <lastmod>2020-02-13T13:40:25+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T12:05:00+00:00</news:publication_date>
          <news:title><![CDATA['I'm ashamed of our history': Church of England is 'still deeply institutionally racist' says Archbishop of Canterbury]]></news:title>
          <news:keywords><![CDATA[im, ashamed, of, our, history, church, of, england, is, still, deeply, institutionally, racist, says, archbishop, of, canterbury]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480663-kai-sakikabara-australian-bmx-star-coma-crash/</loc>
        <lastmod>2020-02-12T11:42:50+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T11:41:00+00:00</news:publication_date>
          <news:title><![CDATA[Kai Sakakibara: Australian BMX star left in a medically-induced coma after horrific crash in Australia]]></news:title>
          <news:keywords><![CDATA[kai, sakakibara, australian, bmx, star, left, in, medically, induced, coma, after, horrific, crash, in, australia]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480662-sweden-deportation-terrorists-criminals/</loc>
        <lastmod>2020-02-13T13:41:27+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T11:36:00+00:00</news:publication_date>
          <news:title><![CDATA[Suspected terrorists & war criminals that Sweden cannot deport given job permits & passports, warns migration chief]]></news:title>
          <news:keywords><![CDATA[suspected, terrorists, war, criminals, that, sweden, cannot, deport, given, job, permits, passports, warns, migration, chief]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480661-mumbai-terror-mastermind-prison/</loc>
        <lastmod>2020-02-13T13:41:43+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T11:33:00+00:00</news:publication_date>
          <news:title><![CDATA[Mumbai raid suspect that left 150+ people killed sentenced to 5 years in Pakistan for financing terrorism]]></news:title>
          <news:keywords><![CDATA[mumbai, raid, suspect, that, left, 150, people, killed, sentenced, to, 5, years, in, pakistan, for, financing, terrorism]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480658-coronavirus-chinese-grand-prix/</loc>
        <lastmod>2020-02-12T14:45:10+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T11:31:00+00:00</news:publication_date>
          <news:title><![CDATA[Chinese Formula 1 Grand Prix expected to be axed as coronavirus outbreak impacts sporting fixtures]]></news:title>
          <news:keywords><![CDATA[chinese, formula, 1, grand, prix, expected, to, be, axed, as, coronavirus, outbreak, impacts, sporting, fixtures]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480644-oil-ticking-time-bomb/</loc>
        <lastmod>2020-02-12T11:43:02+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T11:24:01+00:00</news:publication_date>
          <news:title><![CDATA[The ticking time bomb that could crush oil markets]]></news:title>
          <news:keywords><![CDATA[ticking, time, bomb, that, could, crush, oil, markets]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480660-kremlin-idlib-turkey-syria/</loc>
        <lastmod>2020-02-13T13:41:57+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T11:02:00+00:00</news:publication_date>
          <news:title><![CDATA[Syrian army only targets terrorists, who are still active in Idlib despite de-escalation agreement with Turkey – Kremlin]]></news:title>
          <news:keywords><![CDATA[syrian, army, only, targets, terrorists, who, are, still, active, in, idlib, despite, de, escalation, agreement, with, turkey, kremlin]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/sport/480659-manny-pacquiao-joins-conor-mcgregors-management-stable/</loc>
        <lastmod>2020-02-12T16:17:04+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T10:50:00+00:00</news:publication_date>
          <news:title><![CDATA[McGregor vs Pacquiao? Manny Pacquiao joins Conor McGregor's management stable, sparking rumors of a boxing superfight]]></news:title>
          <news:keywords><![CDATA[mcgregor, vs, pacquiao, manny, pacquiao, joins, conor, mcgregors, management, stable, sparking, rumors, of, boxing, superfight]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/uk/480653-mystery-skeleton-loch-ness-monster/</loc>
        <lastmod>2020-02-13T13:40:06+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T10:50:00+00:00</news:publication_date>
          <news:title><![CDATA[Nessie fans, brace yourselves: Huge mysterious ‘skeleton’ on Scottish beach sends online rumor mill into overdrive (PHOTO)]]></news:title>
          <news:keywords><![CDATA[nessie, fans, brace, yourselves, huge, mysterious, skeleton, on, scottish, beach, sends, online, rumor, mill, into, overdrive, photo]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480643-nissan-lawsuit-carlos-ghosn/</loc>
        <lastmod>2020-02-12T10:07:30+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T10:07:30+00:00</news:publication_date>
          <news:title><![CDATA[Nissan seeks $90 million in damages from fugitive former boss Carlos Ghosn over ‘years of misconduct & fraud’]]></news:title>
          <news:keywords><![CDATA[nissan, seeks, 90, million, in, damages, from, fugitive, former, boss, carlos, ghosn, over, years, of, misconduct, fraud]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/news/480650-erdogan-syria-idlib-retaliation/</loc>
        <lastmod>2020-02-13T13:42:11+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T09:46:00+00:00</news:publication_date>
          <news:title><![CDATA[Erdogan vows to strike Syrian army ‘everywhere’ if Turkish soldiers attacked, while also talking Idlib de-escalation with Putin]]></news:title>
          <news:keywords><![CDATA[erdogan, vows, to, strike, syrian, army, everywhere, if, turkish, soldiers, attacked, while, also, talking, idlib, de, escalation, with, putin]]></news:keywords>
        </news:news>
    </url>
    <url>
        <loc>https://www.rt.com/business/480637-boeing-zero-orders-january/</loc>
        <lastmod>2020-02-12T08:50:47+00:00</lastmod>
        <news:news>
          <news:publication>
            <news:name>RT</news:name>
            <news:language>en</news:language>
          </news:publication>
          <news:publication_date>2020-02-12T08:50:47+00:00</news:publication_date>
          <news:title><![CDATA[Boeing hits all-time low with ZERO orders in January]]></news:title>
          <news:keywords><![CDATA[boeing, hits, all, time, low, with, zero, orders, in, january]]></news:keywords>
        </news:news>
    </url>


</urlset>")  )