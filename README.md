# Skolappen

Skolappen är en app för skolor, där elever själva kan bidra.

Appen är utvecklad i [Flutter](https://flutter.dev/), och källkoden finns här på GitHub. Läs mer nedan för att lära dig mer om hur du kan bidra.

## Teknik

Skolappen är utvecklad i [Flutter](https://flutter.dev/), som är ett så kallat framework. Detta tillåter en att med en och samma kodbas publicera en app för flera olika plattformar; bland annat iOS, Android och Web.

Flutter använder sig utav programmeringsspråket [Dart](https://dart.dev/). Både Dart och Flutter har öppen källkod, och källkoden går att hitta på GitHub här: https://github.com/flutter och https://github.com/dart-lang

För versionshantering av källkoden använder vi [git](https://git-scm.com/).

## Bidra

### Issues

Vill du bidra till skolappen? Det finns två sätt att göra detta. Det första du kan göra är att skapa ett issue om du hittar en bug i appen, eller om du saknar någon funktion. När ett issue har skapats kan vi eller någon annan skriva kod för att lösa problemet eller implementera den nya funktionen.

För att skapa ett issue kan du klicka på "New issue" under fliken "Issue" här på GitHub eller så kan du [klicka här](https://github.com/solidredcompany/skolappen/issues/new).

### Pull Requests

Om du istället vill bidra direkt så kan du skapa en så kallad fork av koden (Knappen uppe till höger). Därefter kan du ändra koden som du vill och sedan skapa en pull request. Din pull request kommer sedan gås igenom, och du får eventuellt kommentarer på saker som behöver åtgärdas.

När din pull request är godkänd kommer den integreras med resten av koden och publiceras på App Store och Google Play vid en kommande uppdatering.

Om du vill veta mer om Flutter och Dart innan du bidrar rekommenderar vi följande:

**Dart:**
* https://dart.dev/language
* https://dart.dev/effective-dart

**Flutter:**
* https://docs.flutter.dev/get-started/install

**Git:**
* https://git-scm.com/book/en/v2

Det finns även väldigt mycket bra dokumentation och exempelkod för Flutter på https://docs.flutter.dev/. Det bästa, enligt oss, är dock att börja skriva kod och lära sig efter hand. Det kommer ta en stund innan du lär dig allt som Flutter kan göra och vi kan nästan garantera att du kommer titta tillbaka på kod som du skrev för några månader sedan och direkt se vad du kunde ha gjort bättre. Det händer oss fortfarande.

Självklart kan du också fråga om hjälp här på GitHub. Antingen genom att öppna ett issue, eller en pull request.

## Filstruktur

Huvuddelen av koden i en Flutter-app finns under mappen `lib`. I denna mappen är det upp till utvecklaren att välja hur filstrukturen ska se ut. Vi har valt en så kallad "Feature first"-struktur, vilket innebär att alla filer primärt är indelade i vilken funktion de har. Alternativet är att man delar in filerna i en "Layer first"-struktur, där filerna primärt delas in i olika lager.

Du kan läsa mer om olika filstrukturer [här](https://codewithandrea.com/articles/flutter-project-structure/).

## Licens

Skolappen är licensierad under GNU GPLv3. Se filen `LICENSE` för den fullständiga licensen.

## Kontakt

Vi som har skapat Skolappen heter Solid Red AB. Du kan maila oss på [kontakt@solidred.se](mailto:kontakt@solidred.se) eller besöka våran hemsida, [solidred.se](https://www.solidred.se).
