# Machine Learning Notes

## Regression

- linear vs non-linear
- used to predict real values

### Common Algorithms

#### Simple Linear Regression

y = b_0 + b_1*x_1
min: sum(y - y^)^2
#### Multiple Linear Regression

y = b_0 + b_1*x_1 + b_2*x_2 + ... + b_n*x_n

- numeric attributes vs catory attributes
- catory attributes -> Dummy Varialbes
- Dummy Variables Trap

##### Methods to build a Model (find predictors)

- All-in
- Backward Elimination        --    
- Forward Selection             |---> Stepwise Regression
- Bidirectional Elimination   --
- Score Comparison

##### Assumtions of a Linear Regression

- Linearity
- Homoscedasticity
- Multivarate normality
- Independence of errors
- Lack of multicollinearity
#### Polynomial Regression

y = b_0 + b_1*x_1 + b_2*x_1^2 + ... + b_n*x_1^n


#### Support Vector for Regression(SVR)

...

#### Decision Tree Classification

create partition, average for each partion, create tree

#### Random Forest Classification

Ensemble Learning (combine multiple or same algorithm)
In this case: Combine multiple decision trees from random sub sets of data points

#### Evaluating Regression Models Performance

R^2:
```
SS_res = sum (y_i - y_i^)^2
SS_tot = sum (y_i - y_avg)^2
R^2 = 1 - SS_res/SS_tot
R^2 colser to 1 then better
(minimize SS_res)

problem more variables will never increase SS_res even if it is useless
```

Adjusted R^2:
```
Adj_R^2 = 1 - (1 - R^2)*(n-1)/(n-p-1)
while p = number of regressors (number of independend variables) and n is the sample size
```

## Classification

### Logistic Regression

ln((p)/(1-p)) = b_0 + b_1*x

### K-NN

..

### SVM

...

### Bayes Theorem

P(A|B) = (P(B|A) * P(A))/P(B)
    ^
    |__ *given* this condition is alwas true

Exapmle:
m1: 30/h
m2: 20/h
P(d) = 0.01
P(m1|d) = 0.5
P(m2|d) = 0.5
  ^  ^
  |  |__ only from the set of defective parts
  |___ propability that it is from m2

Question:
P(d|m2) = ?

Solution:
m1 + m2 = 50/h
P(m1) + P(m2) = 1

50 ---> 100%
2  ---> 1%
30 ---> 30*2 = 60%

P(m1) = 0.6
P(m2) = 0.4

P(d|m2) = (P(m2|d)*P(d))/P(m2)
        = (0.5*0.01)/0.4
        = 0.0125


### Naive Bayes

               Prior Propbability
                    |
P(A1|B) = (P(B|A1)*P(A1))/P(B)
   ^           ^           ^
   |           |           |
   |        Likelihood   Marginal Likelihood
   |__ Posterior Probability

P(A2|B) = (P(B|A2)*P(A2))/P(B)
P(A1|B) v.s. P(A2|B)


### Decision Tree

Tow options:
- regression  ---> real value
- classification ---> group value

### Random Forest

...



## Clustering

Clustering is similar to classification, but the basis is different. 
In Clustering you don’t know what you are looking for, and you are 
trying to identify some segments or clusters in your data. 

### K-Means Clustering

...

Choosing the right number of clusters
cv(P, Cx) = sum(|pi - Cx|^2) pi in P
where: 
P = points in cluster x
Cx = centroid of cluster x

WCSS = cv(P1, C1) + cv(P2, C2) + cv(P3, C3) ...
best if all points has own cluster, WCSS = 0
Elbow method: plot WCSS->Cluster number look for optimal cluster number in plot

### Hierarchical Clulstering

Agglomorative (focus)
- bottom up

Divisive
- top down

Dendogram contains "memory" of the hierarchical clustering


# Association Rule Learning (ARL)

## Apriori

Support(M) = (# M in datapoints)/(#datapoints)
Confidence(M_1 -> M_2) = (# M_1 and M_2 are in same datapoint)/(#M_1 datapoints)
Lift(M_1 -> M_2)  = Confidence(M_1 -> M_2)/Support(M_2)


## Eclat

Support(M) = (# M in datapoints)/(#datapoints)
...

# Reinforcement Learning

## Upper Confidence Bound (UCB)

solve Multi-Armed Bandit Problem
combine exploration and exploitation

## Thampson Sampling

# Links

- [Machine Learning Recipes with Josh Gordon](https://www.youtube.com/playlist?list=PLOU2XLYxmsIIuiBfYad6rFYQU_jL2ryal)

# udemy downloader
https://www.udemy.com/machinelearning/learn/v4/t/lecture/5765878?start=0
https://www.udemy.com/machinelearning/learn/v4/t/lecture/5795729?start=0
```
const xx = $("button.curriculum-item--progress--1rHzA");
xx[0].__reactInternalInstance$jw42be34uk9._currentElement.props.children._owner._currentElement.props.item.angularModel.id



function getVideoUrl(id){

    let iframe = document.createElement("iframe");
    iframe.src = "https://www.udemy.com/machinelearning/learn/v4/t/lecture/"+id+"?start=0";
    let body = document.getElementsByTagName("body")[0];

    function _getVideoUrl(){
        setTimeout(() => {
            try{
                const players = iframe.contentWindow.videojs.players
                window.my_url = undefined;
                for(let k in players){
                    if(players[k]){
                        console.log(players[k].cache_.src);
                        window.my_url = players[k].cache_.src;
                    }
                }
            } catch(error) {
                //...
            }
            if(window.my_url === undefined){
                getVideoUrl();
            }
        }, 500);
    }
    iframe.onload = _getVideoUrl;
    body.appendChild(iframe);

    function wait_for_it(){
        setTimeout(() => {
            if(window.my_url === undefined){
                return wait_for_it();
            } else {
                return ... false this will return to setTimeout
            }
        }, 500);
    }

}

```
console.log(JSON.stringify(temp0, getCircularReplacer()))
{  
   "__reactInternalInstance$jw42be34uk9":{  
      "_currentElement":{  
         "type":"button",
         "key":null,
         "ref":null,
         "props":{  
            "children":{  
               "key":null,
               "ref":null,
               "props":{  
                  "className":"curriculum-item--progress-icon--3RDfI",
                  "glyph":"check",
                  "bsClass":"udi"
               },
               "_owner":{  
                  "_currentElement":{  
                     "key":null,
                     "ref":null,
                     "props":{  
                        "item":{  
                           "angularModel":{  
                              "id":5795729,
                              "type":"lecture",
                              "isLocked":false,
                              "trustHTML":false,
                              "localizedType":"Lecture",
                              "assetType":"Video",
                              "isPublished":true,
                              "objectIndex":21,
                              "progressStatus":"completed",
                              "sortOrder":327,
                              "length":176,
                              "title":"Dataset + Business Problem Description",
                              "current":true,
                              "supplementaryAssets":[  

                              ],
                              "data":{  
                                 "_class":"lecture",
                                 "id":5795729,
                                 "title":"Dataset + Business Problem Description",
                                 "created":"2016-09-27T22:58:37Z",
                                 "is_published":true,
                                 "is_free":false,
                                 "asset":{  
                                    "_class":"asset",
                                    "id":6880243,
                                    "asset_type":"Video",
                                    "title":"slr_get_the_dataset.mp4",
                                    "created":"2016-09-27T23:00:01Z",
                                    "length":176,
                                    "status":1,
                                    "external_url":"",
                                    "filename":"slr-get-the-dataset.mp4"
                                 },
                                 "sort_order":327,
                                 "                                 objec…
```
