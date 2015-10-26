3:57 PM <Kunda> FirasH, i need a favor  
3:57 PM <Kunda> FirasH, you keep the Italian translation up to date, correct ?  
4:00 PM <Kunda> FirasH, https://www.dropbox.com/s/8x3sjzi1b132uc8/transifex-italian-translation.zip <-- these are italian translations from Transifex  
4:01 PM <Kunda> can you compare your translations with it and see if there is any Translations in it that are useful ?  
4:01 PM <Kunda> MrB, ping  
4:08 PM <FirasH> Kunda: for 1.4.6?  
4:08 PM <Kunda> no.. for 1.5.1  
4:09 PM <Kunda> the problem and I don't quite understand it, is that the source file that was uploaded to Transifex was done so withtout some metadata..which makes it look differently from normal .ts files  
4:10 PM <Kunda> supposedly if you run lsupdate or whatever qt liguist executable that you need to run to 're-initialize'(?) the .ts file correctly and then you can diff it correctly with your .ts file  
4:13 PM <FirasH> Kunda: can I see who made those updates?  
4:14 PM <Kunda> FirasH, for sure  
4:15 PM <Kunda> FirasH, you can use: https://www.transifex.com/scribus/scribus/viewstrings/#it/scribus  
4:15 PM <Kunda> FirasH, there is only one other translator for Italian  
4:16 PM <Kunda> FirasH, if you click on teh search bar in that url, see the dropdown  
4:16 PM <Kunda> find 'Translator'  
4:16 PM <Kunda> and choose 'alex326'  
4:17 PM <FirasH> ah ok I know alex  
4:17 PM <Kunda> cool  
4:17 PM <FirasH> he works on documentation  
4:17 PM <Kunda> oh cool  
4:17 PM <Kunda> i'm trying to unify Transifex with what's in SVN  
4:19 PM <FirasH> mmm, transifex seems to remove <location filename="file.cpp">  
4:20 PM <FirasH> this is what I see comparing the original translation with the one from transifex  
4:23 PM <Kunda> it doesn't remove it...The source file that was uploaded didn't have it originally  
4:23 PM <Kunda> so it removes it  
4:23 PM <Kunda> i think  
4:23 PM <Kunda> i don't know what exactly happens.. but we're trying to sync things  
4:24 PM <Kunda> so one of the languages that aren't in sync is Italian  
4:24 PM <Kunda> because it was submitted directly to SVN  
4:26 PM <FirasH> Kunda: I don't see any changes to Italian translation on Transifex  
4:27 PM <Kunda> FirasH, oh..really?  
4:27 PM <Kunda> ok.. good!  
4:27 PM <FirasH> I'm trying to find kind of a log page  
4:27 PM <FirasH> but I don't know where  
4:29 PM <Kunda> FirasH, not sure yet  
4:29 PM <Kunda> FirasH, last update was Sept 17th  
4:29 PM <FirasH> last update I see Sep 17th  
4:30 PM <Kunda> yea  
4:31 PM <FirasH> http://bugs.scribus.net/view.php?id=13328  
4:31 PM <FirasH> this is my last updat  
4:31 PM <FirasH> e  
4:32 PM <Kunda> yes  
4:32 PM <Kunda> ok  
4:35 PM <FirasH> I think I'm the only active translator for UI atm  
4:35 PM <FirasH> at the moment  
4:35 PM <Kunda> ok.. so the most up to date translation is in SVN of italian and you are the only translator  
4:36 PM <FirasH> it's 96% complete and we're still in development  
4:37 PM <FirasH> made last update during summer  
4:37 PM <Kunda> FirasH, thanks. For the time being please don't update Transifex.  
4:38 PM <Kunda> FirasH, FYI, is the Italian translation at 100% ?  
4:38 PM <Kunda> on transifex it's not  
4:38 PM <FirasH> no, I prefer Qt Linguist and I'm the only one :)  
4:38 PM <FirasH> 1.4.6 yes  
4:38 PM <Kunda> FirasH, ok, then I'll disable italian  
4:39 PM <FirasH> it's a true 100%... rechecked twice + backports from 1.5.x  
4:40 PM <FirasH> yeah you can disable update for Italian from Transifex, maybe in future if there are new translation might be handy  
4:41 PM <FirasH> Transifex it's very similar to LibreOffice Pootle  
4:41 PM <FirasH> you submit translations and reviewers accept etc  
4:42 PM <Kunda> FirasH, have you contributed 1.4.6 (100%)  
4:42 PM <Kunda> FirasH, correct, the idea is there is a manager, coordinators, and translators  
4:43 PM <Kunda> sorry s/coordinators/reviewers/  
4:43 PM <Kunda> so the manager and reviewers review translations  
4:43 PM <FirasH> the last few percentage is so difficult to translate....  
4:43 PM <Kunda> translators can only translate  
4:46 PM <FirasH> now Italian is 7123/7286  
4:46 PM <FirasH> only few strings missing  
  
