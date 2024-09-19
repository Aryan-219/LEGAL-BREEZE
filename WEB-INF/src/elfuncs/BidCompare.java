package elfuncs;

import java.util.ArrayList;

import models.Bid;

public class BidCompare {
    public static ArrayList<Bid> compareBid(ArrayList<Bid> allBids, ArrayList<Bid> appliedBids) {

        ArrayList<Bid> openBids = new ArrayList<Bid>();
        openBids.addAll(allBids);

        for (Bid appliedBid : appliedBids) {
            for (Bid openBid : openBids) {
                if (openBid.getBidId().equals(appliedBid.getBidId())) {
                    System.out.println("Found..." + openBid.getBidId());
                    openBids.remove(openBid);
                    break;
                }
            }
        }

        // System.out.println("Printing all bids....");
        // for (Bid bid : allBids) {
        //     System.out.println(bid.getBidId());
        // }
        // System.out.println();

        // System.out.println("Printing applied bids....");
        // for (Bid appliedBid : appliedBids) {
        //     System.out.println(appliedBid.getBidId());

        // }
        // System.out.println();

        // System.out.println("Printing open bids....");
        // for (Bid openBid : openBids) {
        //     System.out.println(openBid.getBidId());

        // }
        // System.out.println();

        return openBids;
    }
}
