package elfuncs;

import java.util.ArrayList;
import java.util.HashSet;

import models.Bid;

public class BidCompare {
    public static ArrayList<Bid> compareBid(ArrayList<Bid> allBids, ArrayList<Bid> appliedBids) {

        ArrayList<Bid> result = new ArrayList<>();

        

        // Loop through list1
        for (Bid bid : allBids) {
            // Check if list2 contains the user from list1 based on userId
            if (!appliedBids.contains(bid)) {
                // If the user is not found in list2, add it to the result list
                result.add(bid);
            }
        }


        for(Bid b : result) {
            System.out.println(b.getIssue());
        }


        return result;
    }
}
