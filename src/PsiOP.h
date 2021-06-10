#ifndef DEF_PSIOP
#define DEF_PSIOP

#include <vector>
#include "Interval.h"

class PsiOP
{
private:
    std::vector<double> y;
    int n;
    Interval d;
    double beta;
    double alpha;
    std::vector<double> wt;
    std::vector<int> cp;
    
public:
    /**
     * @param[in] y A vector of observations.
     * @param[in] beta a constant used in the calculation of the penalty.
     * @param[in] alpha a constant used in the calculation of the penalty.
     * @param[in] wt A vector of weights associated to the observations.   
     */
    PsiOP(
        std::vector<double> y_, 
        double beta_, double alpha_, 
        std::vector<double> wt_ = {0}
    );
    
    /**
* @details Procedure to infer the number of changepoints and their location in the data.
     */
    void Search();

    /**
     * @returns the location of inferred cghangepoints in the data.  
     */
    std::vector<int> Retreive_changepoints();
};


#endif
