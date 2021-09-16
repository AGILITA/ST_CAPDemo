const cds = require('@sap/cds');

class travel extends cds.ApplicationService {
    async init(srv) {

        this.on('getRandomDestination', async (req) => { 
            const {name} = req.data;
            return 'Zurich Hallo ' + name
        });

        // this.after('READ', 'Destinations', async (dests) =>{
        //     return dest.map()
        // } )

        return super.init();
    }
}
module.exports = { travel };
