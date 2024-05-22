function transformpoints(x,a,b)
    """Transforms points from the interval [-1, 1] to the interval [a, b].

    Parameters
    ----------
    x : array
        The points to be tranformed.
    a : array
        The lower bounds on the interval.
    b : array
        The upper bounds on the interval.

    Returns
    -------
    transformed_pts : array
        The transformed points.
    """

    return ((b-a).*x .+(b+a))/2
end

# function hasconverged(coeff,coeff2,tol)
#     """Determine whether the high-degree coefficients of a Chebyshev approximation have converged
#     to machine epsilon.

#     Parameters
#     ----------
#     coeff : array
#         Absolute values of chebyshev coefficients of degree n approximation.
#     coeff2 : array
#         Absolute values of chebyshev coefficients of degree 2n+1 approximation.
#     tol : float
#         Tolerance (distance from zero) used to determine wheher the coefficients have converged.

#     Returns
#     -------
#     hasConverged : bool
#         True if all the values of coeff and coeff2 are within tol of each other; False otherwise
#     """
# end

function getfinal_degree(coeff,tol)
    """Finalize the degree of Chebyshev approximation to use along one particular dimension.

    This function is called after the coefficients have started converging at degree n. A degree
    2n+1 approximation is passed in. Assuming that the coefficients have fully converged by degree 
    3n/2, the cutoff epsVal is calculated as twice the max coefficient of degree at least 3n/2.
    The final degree is then set as the largest coefficient with magnitude greater than epsVal.
    
    The rate of convergence is calculated assuming that the coefficients converge geometrically
    starting from the largest coefficient until machine epsilon is reached. This is a lower bound, as
    in practice, the coefficients usually slowly decrease at first but drop off fast at the end.

    Parameters
    ----------
    coeff : array
        Absolute values of chebyshev coefficients.
    
    Returns
    -------
    degree : int
        The numerical degree of the approximation
    epsVal : float
        The epsilon value to which the coefficients have converged
    rho : float
        The geometric rate of convergence of the coefficients
    """

    # Set the final degree to the position of the last coefficient greater than convergence value
    converged_deg = Int64(div((3 * (length(coeff) - 1) / 4),1)) + 1 # Assume convergence at degree 3n/2.
    epsval = 2*maximum(coeff[converged_deg:end]) # Set epsVal to 2x the largest coefficient past degree 3n/2
    nonzero_coeffs_index = [i for i in 1:length(coeff) if coeff[i]>epsval]
    if isempty(nonzero_coeffs_index) 
        degree = 1
    else
        degree = max(1,nonzero_coeffs_index[end]-1)
    end

    # Set degree to 0 for constant functions (all coefficients but first are less than tol)
    if all(x -> x < tol, coeff[2:end])
        degree = 0
    end
    
    # Calculate the rate of convergence
    maxspot = argmax(coeff)
    if epsval == 0 #Avoid divide by 0. epsVal shouldn't be able to shrink by more than 1e-24 cause floating point.
         epsval = coeff[maxspot] * 1e-24
    end

    rho = (coeff[maxspot]/epsval)^(1/(degree - (maxspot[2]) + 2))
    return degree, epsval, rho
end

function startedconverging(coefflist,tol)
    """Determine whether the high-degree coefficients of a given Chebyshev approximation are near 0.

    Parameters
    ----------
    coeffList : array
        Absolute values of chebyshev coefficients.
    tol : float
        Tolerance (distance from zero) used to determine whether coeffList has started converging.
    
    Returns
    -------
    startedConverging : bool
        True if the last 5 coefficients of coeffList are less than tol; False otherwise
    """
    return all(x -> x < tol, coefflist[end-4:end])
end