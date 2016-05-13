function capitalizeEveryNthWord(sentence, offset, n) {
        var words = sentence.split(" ");
        var firstPart = [];
        var lastPart = words;

        if (offset > 0) {
          firstPart = words.slice(0, offset);
          lastPart = words.slice(offset, words.length);
        }

        for (x=0; x < lastPart.length; x++) {
          if(x % n === 0) {
            lastPart[x] = lastPart[x].charAt(0).toUpperCase().concat(lastPart[x].substring(1));
          }
        }

        return firstPart.concat(lastPart).join(' ');
    }
