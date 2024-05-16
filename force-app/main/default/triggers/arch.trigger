trigger arch on Campaign (after delete) {

        if(trigger.isafter){


        ArchCamp.doing(trigger.old);

            }

}